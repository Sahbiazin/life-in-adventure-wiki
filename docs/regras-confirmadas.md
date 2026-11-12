# Regras identificadas no código — versão 1.2.47

Análise estática da biblioteca ARM64 fornecida pelo usuário. Não houve execução ou modificação do jogo. Os endereços abaixo são RVAs desse binário, não endereços de outra versão.

## Evidência e reprodução

- Biblioteca: `extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so`.
- Metadados: `extracao-1.2.47/base/assets/bin/Data/Managed/Metadata/global-metadata.dat`, formato 31.
- Ferramenta: [Il2CppDumper 6.7.46, release oficial](https://github.com/Perfare/Il2CppDumper/releases/tag/v6.7.46).
- A ferramenta recuperou classes, campos e endereços de funções. Os corpos vazios em `dump.cs` não são o código das funções; as regras foram examinadas no assembly ARM64 com Capstone.
- Listagens locais em `dados-extraidos/1.2.47/il2cpp/asm/`. O script `scripts/disassemble_il2cpp.py` converte endereços ELF em offsets e anota referências usando símbolos e relocações. Essas anotações são auxiliares; a análise dos saltos foi feita nas instruções.
- `database/rule-evidence.json` registra os hashes dos arquivos e as funções usadas.

Com o Il2CppDumper oficial extraído em `tools/Il2CppDumper`, a recuperação usa:

```powershell
.\tools\Il2CppDumper\Il2CppDumper.exe extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so extracao-1.2.47/base/assets/bin/Data/Managed/Metadata/global-metadata.dat dados-extraidos/1.2.47/il2cpp
.\.venv\Scripts\python.exe -X utf8 scripts/disassemble_il2cpp.py
.\.venv\Scripts\python.exe -X utf8 scripts/decode_rules.py
.\.venv\Scripts\python.exe -X utf8 -m unittest discover -s tests -v
```

## Formato

`GetFormatData`, RVA `0x1A9004C`, divide comandos por `|`. `FormatData..ctor`, RVA `0x1AAE79C`, divide cada comando por `_` e interpreta três campos como `tipo`, `alvo` e `quantidade` (float32). Um token numérico isolado é uma quantidade. Formatos não implementados pelo decodificador ficam preservados e sinalizados.

## Requisitos

`CheckRequire`, RVA `0x1A95244`, implementa uma conjunção por padrão. O prefixo literal **`-1|`** muda a combinação para OU; não é uma recompensa negativa. Requisito vazio é aceito.

| Código | Interpretação estática | Evidência no ramo padrão |
|---|---|---|
| `1_alvo_valor` | `GetUserData(alvo) >= valor` | `0x1A95F58–0x1A95FD0` |
| `2_alvo_valor` | `GetUserData(alvo) < valor` | `0x1A962B8–0x1A96330` |
| `8_item_quantidade` | `Inventory.CheckHaveItem(item, Convert.ToInt32(quantidade))` | `0x1A9641C–0x1A964F4` |
| `10_item_quantidade` | Negação do mesmo teste de posse | `0x1A964F8–0x1A965D4` |
| `5_alvo_valor` | `chainEventList[alvo] == trunc(valor)` | `0x1A96170`, bloco comum `0x1A96878–0x1A96900` |
| `13_alvo_valor` | `mainEventList[alvo] == trunc(valor)` | `0x1A96384`, mesmo bloco comum |

`GetUserData` pode incluir modificadores para atributos. Não se deve substituir automaticamente pelo valor inicial da ficha.

`Inventory.CheckHaveItem`, RVA `0x1A3EE48`, soma as contagens do item em duas coleções e compara o total com a quantidade (`>=`, em `0x1A3EF94–0x1A3EFA8`). Portanto, o requisito 8 exige pelo menos a quantidade indicada; o 10 exige menos do que ela. A conversão de float para inteiro usa `System.Convert.ToInt32`, com arredondamento ao inteiro mais próximo e empate para o par, diferente da truncagem dos estados.

## Recompensas

`GiveRewardAndSetRewardText`, RVA `0x1A91980`, usa outra tabela de tipos. O mesmo número não tem o mesmo significado entre requisitos e recompensas.

| Código | Operação |
|---|---|
| `0_alvo_quantidade` | Chama `ChangeUserData(alvo, quantidade, false)` |
| `3_item_quantidade` | Repete `Inventory.AddItem(item, -1, true)` pela quantidade convertida |
| `4_item_quantidade` | Repete `Inventory.RemoveItemByID(item)` pela quantidade convertida |
| `5_alvo_estado` | Define `chainEventList[alvo] = trunc(estado)` |
| `13_alvo_estado` | Define `mainEventList[alvo] = trunc(estado)` |

Evidência: ramo 0 em `0x1A91B58–0x1A91BB8`; ramo 5 em `0x1A922BC–0x1A922E4`; ramo 13 em `0x1A92200`; atribuição compartilhada em `0x1A9222C–0x1A92284`.

Para itens, a tabela de saltos de `GiveRewardAndSetRewardText` em `0xA44200` resolve o código 3 para `0x1A92484` e o 4 para `0x1A922E8`. O primeiro converte a quantidade em `0x1A924AC`, controla o laço em `0x1A924B0–0x1A924B8` e chama `AddItem` em `0x1A925D8`. O segundo converte em `0x1A92310`, controla o laço em `0x1A92314–0x1A9231C` e chama `RemoveItemByID` em `0x1A92434`. Quantidades não positivas não executam transferências. A adição pode abrir tratamento de inventário cheio; não se presume que o objeto já esteja equipado ou que o comando determine todos os efeitos da escolha. Essas correspondências foram verificadas no binário ARM64 do build 366, sem execução do jogo.

A instrução de alteração de atributo é conhecida, mas o valor final pode envolver limites, estado e efeitos secundários de `ChangeUserData`, RVA `0x1AF7A54`. Não generalizar todo `0_...` como uma soma sem limites. A rotina soma o delta ao valor armazenado no bloco `0x1AF7CA0–0x1AF7D14`.

Índices identificados usando a tabela `Str.stat` no inicializador `Str..cctor`:

| Índice | Nome |
|---|---|
| 0 | Saúde |
| 1 | Sanidade |
| 2 | EXP |
| 4 | Ouro |
| 12 | Carisma |

Os índices adicionais confirmados estão no complemento de auditoria abaixo; os nomes ainda não identificados continuam técnicos no decodificador.

## Sorteio de resultados

`GetTotalChance`, RVA `0x1A99D04`, soma pesos inteiros:

- Token numérico isolado: quantidade truncada em direção a zero.
- Token `0_indice_fator`: `trunc(GetUserData(indice) * fator)`.
- Cada parcela é truncada separadamente; não se trunca apenas a soma final.

`GetResultIndex`, RVA `0x1A992C0`, filtra resultados pelos requisitos, repete seus índices conforme o peso e sorteia uniformemente nessa lista. Resultados `type == 0` recebem modificadores adicionais; resultados `type == 1` podem receber penalidade do modo difícil. Portanto, **peso bruto não é probabilidade final**.

O decodificador só informa probabilidades estáticas quando todos os resultados da escolha têm requisitos vazios, `type == 2` e pesos constantes. Outros casos recebem `null`, não probabilidades inventadas. Uma única alternativa com peso positivo nesse subconjunto é determinística.

O Atlas identifica testes de atributos quando `chance` contém termos `0_indice_fator` com fator não nulo e índice confirmado de FOR, DES, INT, CAR, CON ou SAB. A etiqueta lista esses atributos, inclusive combinações; não deriva um limite mínimo do peso de falha. Nessas escolhas, os resultados `type == 0` e `type == 1` são apresentados como sucesso e falha, respectivamente, preservando o código original. Exemplos verificáveis nos textos do build 366: `EventNormal:222` (ajuda na fazenda, Força), `EventNormal:552`, escolha 3 (observar os estudantes, Inteligência), e `EventNormal:555`, escolha 4 (distraí-los, Carisma). As fórmulas finais e modificadores continuam sem simulação.

## Conexões

`nextEvent` é usado como índice da lista de eventos atual no caminho comum de `ClickEventButton`, `0x1A8EE68–0x1A8EED8`. O `type` do resultado não é o enum `eEvent` que identifica tabelas.

O valor `-2` gera o botão que encerra a apresentação do encontro atual e permite continuar a aventura, em vez de indicar o nó de ID negativo de uma tabela. Não significa que toda a cadeia de história terminou: flags podem habilitar futuros encontros. Outros sentinelas continuam pendentes de documentação completa.

As seis tabelas em português foram verificadas: em todas, o `id` de cada registro coincide com sua posição na lista.

Um encontro pode atravessar vários desses nós: `EventNormal:552 → 553 → 554 → 555`, por exemplo, contém as respostas intermediárias aos estudantes de Ravada Solar. O nó 552 também retorna a si mesmo após o teste de observação, mudando `chainEventList[628]`. O mapa segue essas referências na mesma tabela, compartilhando destinos convergentes e mantendo retornos explícitos. O Modo de Jogo só avança ao salvar o resultado observado; sentinelas negativas não são convertidas em um encontro nem encerram automaticamente a run.

## Limites atuais

Não há validação dinâmica no emulador. Há outros tipos de requisito e recompensa ainda desconhecidos. As correspondências acima cobrem posse e transferências diretas de itens; outras operações de inventário, resultados de combates e modificadores completos de chance continuam pendentes. A análise também encontrou lógica de conquistas fora de `reward`, na função `CheckAchievement`: recomendações devem declarar seu objetivo e não presumir que esse campo descreve todos os efeitos do jogo.

## Complemento de auditoria para o Modo de Jogo

As correspondências abaixo ampliam a **interpretação estática**. Elas não constituem um motor de execução nem uma garantia de melhor escolha. A identificação do binário e as tabelas de saltos podem ser verificadas com `python scripts/verify_native_rules.py`; o relatório está em `docs/native-rules-evidence.json`.

### Atributos visíveis

O trecho de `Str..cctor` que constrói `stat` começa em `0x1A51C54`. As dimensões são 18 × 10, em `0xA145C0`. As atribuições da coluna portuguesa confirmam:

| Índice | Rótulo | Instrução que grava o texto português |
|---|---|---|
| 5 | FOR / Força | `0x1A524B8` |
| 6 | DES / Destreza | `0x1A5266C` |
| 7 | INT / Inteligência | `0x1A5280C` |
| 8 | Saúde máxima | `0x1A529B0` |
| 9 | Sanidade máxima | `0x1A52B40` |
| 13 | CON / Constituição | `0x1A531BC` |
| 14 | SAB / Sabedoria | `0x1A53374` |

O índice 3 tem apenas o texto `d` nesta tabela, mas foi identificado como **Alinhamento** pela classificação de `GetUserData(3)` em `StatusCtrl.ShowFameInfo` e pelas tabelas `Str.alignment` e `Str.alignmentList`. Admite valores negativos; as faixas portuguesas são Maligno, Impuro, Neutro, Justo e Bondoso. Consulte [Alinhamento](alinhamento.md) para limiares, evidência e acompanhamento por intervalo. Os índices 10, 11, 15, 16 e 17 continuam com identificação técnica, pois seus nomes estão vazios nesta tabela.

### Novos requisitos

| Código | Interpretação | Entrada no ramo padrão de `CheckRequire` |
|---|---|---|
| 11 | Sexo do personagem (`DataMgr.sex`, offset `0x60`) igual à quantidade truncada; alvo ignorado | `0x1A9618C` |
| 12 | Estado `subEventList[alvo] == trunc(quantidade)`, condicionado à ativação do conto e ao argumento `curSubEvent` quando informado | `0x1A96334` |
| 18 | `chainEventList[alvo] != trunc(quantidade)` | `0x1A9660C` |
| 20 | `Equipment.GetAbilityValue(alvo, items=null) >= quantidade` | `0x1A96028` |
| 21 | Mesmo valor de habilidade `< quantidade` | `0x1A961C4` |
| 26 | `traitList` contém o alvo; quantidade ignorada | `0x1A963A4` |
| 28 | `traitList` não contém o alvo; quantidade ignorada | `0x1A963CC` |
| 31 / 33 | `subEpList` contém / não contém `alvo*1000 + Convert.ToInt32(quantidade)` | `0x1A966D8` / `0x1A95FD4` |
| 32 / 34 | Mesmo teste para `mainEpList` | `0x1A966B0` / `0x1A96148` |

No código 12, o caminho entre `0x1A96364` e `0x1A96878` consulta `BaseSubEventActive` para contos básicos ou a compra e a ativação para os demais; também exige compatibilidade com `curSubEvent` se ele não for `-1`. A comparação do estado, isolada, **não é suficiente**. O decodificador preserva essas condições em `context_requirements`.

Os predicados de traço `b__6` e `b__7`, em `0x1AB1618` e `0x1AB16B8`, comparam cada elemento ao alvo convertido. Os predicados `b__8` a `b__11`, em `0x1AB1758–0x1AB1AE4`, constroem o identificador de epílogo multiplicando o alvo por 1000 e somando a quantidade convertida. Os testes de habilidade terminam em `0x1A96110–0x1A96118` e `0x1A962AC–0x1A962B4`; o valor vem da função de habilidade, não do número de variante do catálogo.

### Estados de contos e epílogos

| Recompensa | Operação | Evidência |
|---|---|---|
| 12 | Define `subEventList[alvo] = trunc(quantidade)` | `0x1A91EC4`, atribuição comum em `0x1A9221C–0x1A92280` |
| 14 | Acrescenta `alvo*1000 + Convert.ToInt32(quantidade)` em `subEpList` | `0x1A9269C`, construção em `0x1A9273C–0x1A92748` |
| 15 | Mesma operação em `mainEpList` | `0x1A926BC` |
| 29 | Remove uma ocorrência do identificador composto em `subEpList` | `0x1A91D28`, bloco comum em `0x1A929C0–0x1A92A20` |
| 30 | Mesma remoção em `mainEpList` | guarda `0x1A9299C`; bloco `0x1A929A4–0x1A92A20` |

As listas de epílogos desta aventura (`mainEpList`, `subEpList`) são diferentes dos registros permanentes `bookMainEp`, `bookSubEp`, `bookItem`, `bookMonster` e `bookAchievement`. Um comando de epílogo não comprova, sozinho, o registro permanente nem uma vitória. A tabela portuguesa `mainEp4` contém 189 registros, e `subEp4`, 165; os IDs são os valores do array `index`, e não as posições no array.

### Comandos de combate (`reward` tipo 6)

`EventCtrl.ClickEventButton` (`0x1A8D2F0`) procura o tipo 6 após processar os efeitos comuns. O comando abre um combate; não é uma recompensa, uma vitória ou uma confirmação de catálogo.

| Comando | Inimigo e preparação |
|---|---|
| `6_0_ID` | Busca o monstro fixo pelo ID |
| `6_1_0` | Mantém o inimigo atual do encontro |
| `6_1_2` / `6_1_3` | Mantém o inimigo atual e modifica a faixa de poder, como os modos 2 / 3 |
| `6_2_ID` | Busca o monstro fixo; divide `battleMin` e `battleMax` por 2, com truncamento; `startState=1` |
| `6_3_ID` | Busca o monstro fixo; multiplica esses campos por 1,5 em float32 e trunca; `startState=2` |
| `6_4_ID` | Busca o monstro fixo; define `startState=4`; a finalidade desse estado especial permanece sem nome confirmado |

A quantidade usa `Convert.ToInt32(float)`, com arredondamento de empates para o par. A busca pelo monstro (`MonsterDataBase.GetMonsterDataByIndex`, `0x1AB0510`) aparece em `0x1A8DCF0`, `0x1A8DDAC`, `0x1A8DF18` e `0x1A8E00C`. A ativação comum está em `0x1A8E020–0x1A8E024`. As alterações atingem `battleMin` / `battleMax` (`0x44` / `0x48`), não diretamente os campos `hp` / `dmg`; o Atlas não transforma esse fator em chance de vitória ou dano previsto. As instruções verificadas estão no relatório nativo reproduzível.

Todas as **2.005 ocorrências** do tipo 6 nesta base são interpretadas. IDs fixos geram referências explícitas ao catálogo; `6_1_0` não significa monstro #0. Em Tesouro #80, a escolha **Intervir** contém `6_0_87`: combate contra **Anão**, seguido pelos desfechos em Tesouro #81. Ouro, EXP, alinhamento, itens e estados do ramo de vitória só são aplicados quando esse resultado é confirmado. O comando de início de combate, isolado, não gera pendência de efeito desconhecido nem invalida todos os estados da história.

### O que continua sem interpretação completa

`docs/atlas-readiness.json` é a auditoria reproduzível dos dados usados pelo aplicativo. Comandos desconhecidos aparecem com contagens e exemplos, incluindo evento, escolha/resultado e texto original. O atributo `simulation_ready` permanece `false`.

Comandos tratados fora de `GiveRewardAndSetRewardText` precisam ser rastreados no controlador responsável, como foi feito para combate. Não basta atingir o ramo padrão para concluir que um código não tem efeito. Os requisitos 23/24 dependem de `CheckHaveList`, e o 35 consulta uma condição adicional sobre atributo e evento. Os casos sem semântica confirmada continuam preservados.

A pontuação foi localizada em `ScorePopup.Init` (`0x197AF88`) e, para o modo difícil, em `HardModeMgr.GetCurrentScore` (`0x196113C`) e `CheckHardModeScore` (`0x195E240`). As rotinas têm entradas e modificadores distintos. Não foi implementada uma fórmula única nem um otimizador de pontuação. Também continuam pendentes os resultados de combate, pesos finais modificados, efeitos indiretos de atributos/equipamentos, seleção de encontros e confirmação dinâmica em um ambiente capaz de executar a versão ARM do jogo.
