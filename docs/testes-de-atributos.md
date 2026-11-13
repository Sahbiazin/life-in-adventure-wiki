# Probabilidades de resultados e testes de atributos — build 366

O resultado de uma escolha usa uma **urna de tickets inteiros**, não um teste `atributo / 20`. `EventCtrl.GetResultIndex` (`0x1a992c0`) filtra os resultados por `CheckRequire`, calcula seus pesos, repete o índice original de cada resultado na lista de tickets e escolhe uma posição com `UnityEngine.Random.Range(0, count)` (`0x1a99c98`). O Atlas reproduz as probabilidades dessa urna, sem sortear nem registrar um resultado pelo jogador.

Fonte: `extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so`, SHA-256 `0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25`, nomes de `dados-extraidos/1.2.47/il2cpp/script.json` e `dump.cs`.

## Peso básico

`GetTotalChance` (`0x1a99d04`) chama `GetFormatData`. Para cada termo:

- Constante: converte para `float32` e trunca em direção a zero.
- `0_indice_coeficiente`: obtém `DataMgr.GetUserData(indice)`, multiplica em `float32` pelo coeficiente e trunca o produto em direção a zero.
- Soma os **inteiros de cada termo**. Não soma todos os floats antes de truncar.

As instruções relevantes estão em `0x1a99db0–0x1a99e2c`. Assim, `0.9|0.9|0_5_0.19` com FOR 9 produz `0 + 0 + 1 = 1` ticket.

## Sucesso (`type: 0`)

As modificações são sequenciais, sobre o peso já atualizado:

1. Se INT ≥ 10, acrescenta `max(0, ceil(float32(float32(INT × peso) × float32(0.01))))` (`0x1a99724–0x1a997dc`). Essa inteligência é usada em todos os sucessos, inclusive testes de outro atributo.
2. Truque (habilidade 87) com nível positivo acrescenta **3 tickets**, independentemente do nível (`0x1a9981c–0x1a9983c`).
3. Intelecto Transcendente (113) com nível positivo acrescenta **1 ticket** (`0x1a99874–0x1a998b4`).
4. Para cada termo `0_indice_coeficiente`, na ordem em que aparece, aplica as habilidades correspondentes. FOR (5) usa Super Força (60); DES (6) usa Acrobacia (51); CAR (12) usa Graciosidade (4). Acrescenta `max(0, ceil(float32(nível × peso × taxa)))`, com taxa `float32(0.05)` nos níveis 1–3 e `float32(0.10)` no nível 4 ou maior (`0x1a99928–0x1a99bb0`). Mesmo termos com coeficiente zero continuam sendo termos na rotina nativa.
5. Depois da Graciosidade, cada termo CAR aplica Fedor (45): subtrai `ceil(float32(nível × peso × float32(0.10)))`, mantendo o peso no mínimo zero (`0x1a99bb4–0x1a99c78`). Fedor não é aplicado aos termos FOR/DES.

As taxas nativas são floats da seção ELF: `0xa130c8 = 0.01f`, `0xa130d4 = 0.05f`, `0xa13158 = 0.10f`. A implementação usa `Math.fround` e respeita a ordem. Um sucesso de peso básico zero pode ganhar tickets com Truque/Intelecto; não se deve removê-lo antecipadamente com base apenas na chance estática.

## Falha (`type: 1`) e dificuldade

Quando há pelo menos dois resultados elegíveis, a falha passa por `HardModeMgr.ApplyHardModeEventPenealty` (`0x1961b44`). O método verifica a existência da habilidade **Fome Insaciável (111)**; a checagem não usa apenas o botão Normal/Difícil. `AddUserAbilityByHardMode` concede 111 no nível difícil 3 ou maior. Sem essa habilidade, o peso permanece igual.

Com a habilidade, o jogo acrescenta `max(1, trunc(float32(float32(fator × peso) − peso)))`. O fator serializado é **1.2f**. Peso 8 vira 9, enquanto peso 10 vira 12; não é equivalente a `ceil(peso × 1.2)`.

O fator foi confirmado no componente `HardModeMgr` do arquivo Unity `data.unity3d`, SHA-256 `fc411d3a597b83e32152649f2feb8fe1ff55aaa7951b5c4d56e84c777c0fa694`. O componente está em `level0`, path ID `53059`, script externo `1125`, com 64 bytes. Após o cabeçalho e os campos serializados anteriores, os floats nos offsets `0x30/0x34/0x38/0x3c` são dano `1.2f`, defesa `1.2f`, evento `1.2f` e ouro `0.8f`, correspondendo aos campos nativos `0x48/0x4c/0x50/0x54`. O Atlas não deduz que todos esses fatores se aplicam em qualquer nível difícil; cada chamada e condição precisam ser respeitadas.

## Outros resultados e limites

Outros tipos de resultado mantêm o peso básico. A probabilidade é o peso modificado positivo dividido pela soma dos pesos elegíveis positivos. A chance de sucesso é a soma das probabilidades dos resultados `type: 0`. Para alternativas aleatórias sem resultado de sucesso, esse campo fica nulo; a distribuição por resultado continua disponível.

`GetResultSuccessRate` (`0x1a94910`) calcula o número mostrado na interface do jogo e tem diferenças de conversão: usa floats em etapas em que `GetResultIndex` usa inteiros. O Atlas prioriza a rotina que realmente sorteia o resultado. Não usa a aparência do dado como uma distribuição d20 independente; os modificadores de dado que aparecem nessa seleção já foram incluídos por seus tickets.

Requisitos inconclusivos, atributos ausentes ou habilidades relevantes desconhecidas impedem apresentar uma probabilidade completa. No Modo de Jogo, cada resultado informa os dados que faltam e oferece um atalho para o campo correspondente da ficha. Não é preciso informar habilidades manualmente quando elas podem ser derivadas de atributos, equipamentos confirmados e uma lista completa de traços. Uma lista de traços não confirmada ou efeitos pendentes também ficam identificados, em vez de aparecer apenas a mensagem genérica de probabilidade não calculada. `AtlasAbilities.derive` combina equipamentos confirmados, traços, bônus nativos por atributo, dificuldade e níveis efetivos observados. Quando apenas uma habilidade irrelevante permanece desconhecida, isso não bloqueia outro teste. Valores observados substituem somas calculadas, evitando duplicação.

Urnas vazias têm um fallback nativo para o índice original zero. O Atlas não converte esse comportamento especial em sucesso garantido nem declara uma opção inelegível como disponível. Pesos inválidos ou fora da faixa segura de inteiros também permanecem sem previsão.

## Implementação e validação

`dist/test-engine.js` exporta `AtlasTests.choice(event, ci, state, options)`, com probabilidades alinhadas aos índices originais de resultado, pesos, chance agregada de sucesso, origem e cobertura. É um módulo puro e não altera a run. `options.requirement` fornece a mesma avaliação triestada usada pelo planejador; `options.index` permite derivar habilidades. Ajustes explícitos completos de habilidades servem para testes e calibração.

`test-engine.test.cjs` verifica a fazenda real (`EventNormal:222`), conversões por termo, INT, Truque, Intelecto, habilidades evoluídas, múltiplos atributos e ordem, Fedor, dificuldade, requisitos, dados ausentes, urnas vazias e normalização de todos os eventos calculáveis do catálogo. `scripts/verify_native_tests.py` verifica instruções e constantes no ELF e, opcionalmente, o componente serializado Unity. A fórmula foi confirmada estaticamente nesta versão; não houve execução do aplicativo Android para comparar sequências reais de sorteios.
