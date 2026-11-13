# Níveis efetivos de habilidades

`ability-engine.js` disponibiliza `AtlasAbilities.derive(state, index, options)`, sem acesso a DOM, armazenamento ou rede. Ele deriva níveis a partir de itens **equipados**, metadados de traços e regras confirmadas de atributos. Observações efetivas da ficha e ajustes explícitos substituem a soma da habilidade correspondente, evitando contar o mesmo bônus duas vezes.

O retorno contém `levels` para os IDs 0–113 (`number` ou `null`), parcelas `derived`, proveniência `sources`, `complete`, `unknown`, `missing` e `notes`. Ausência de equipamento confirmado, lista incompleta de traços ou efeitos pendentes não é interpretada como nível zero. Os consumidores devem consultar os níveis necessários para seu cálculo: desconhecer Santidade por falta de alinhamento, por exemplo, não impede necessariamente um teste de Força.

## Evidência nativa

Fonte: `Equipment.GetAbility` (`0x1a1fc78–0x1a24558`) em `libil2cpp.so` arm64 da versão 1.2.47, SHA-256 `0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25`, nomes recuperados de `dados-extraidos/1.2.47/il2cpp/script.json`.

Os blocos criam `Ability` (`0x19c84b4`), escrevem o ID em `+0x10`, o nível em `+0x14`, procuram o mesmo ID na lista e somam o nível se já existir. As comparações usam valores float32 de `DataMgr.GetUserData` (`0x1af7748`), isto é, os atributos efetivos.

| Habilidade | Parcela derivada confirmada |
| --- | --- |
| 0 · Feitiçaria | INT ≥18 acrescenta 1, ≥27 acrescenta 2; CAR usa a mesma regra e as duas parcelas se somam. |
| 1 · Intimidação | CAR ≥27 e alinhamento <−9: +1; se alinhamento <−24: +2. |
| 2 · Estabilidade | CON e SAB ≥13: +1; ambas ≥20: +2. |
| 3 · Santidade | Alinhamento ≥25: +1; alinhamento <−24: −1. |
| 4 · Graça | CAR ≥27 e alinhamento ≥10: +1; se alinhamento ≥25: +2. |
| 25 · Previsão | SAB ≥18: +1; ≥27: +2; ≥42: +3. |
| 30 · Parcela defensiva | CON ≥18: +1; ≥27: +2. |
| 42 | DES e CON ≥13: +1; ambas ≥20: +2. |
| 46 · Maestria física | FOR e DES ≥13: +1; ambas ≥20: +2. |
| 51 · Acrobacia | DES ≥18: +1; ≥27: +2. |
| 58 · Dureza | FOR e CON ≥13: +1; ambas ≥20: +2. CON <4 acrescenta −2. |
| 60 · Super Força | FOR ≥18: +1; ≥27: +2. |
| 91 | CAR e SAB ≥13: +1; ambas ≥20: +2, desde que Feitiçaria tenha nível positivo. |
| 92–97 · Fraquezas | Respectivamente FOR/DES/INT/CAR/CON/SAB <4: +1. |
| 113 · Intelecto | INT ≥42: +1. |

Pontos de conferência: primeira concessão de Feitiçaria em `0x1a20894`; Graça em `0x1a21a18`; Acrobacia em `0x1a21c1c`; Super Força em `0x1a2277c`; Intelecto em `0x1a243e4`, cujo float32 imediato é `0x42280000` (42). Os testes cobrem os limites inclusivos e exclusivos dessas comparações, inclusive faixas de alinhamento.

As maestrias de armadura 90/89 são consultadas antes dos bônus de atributos. Para armadura pesada (categoria 3, subcategoria 2) e média (categoria 3, subcategoria 1), respectivamente, o bloco adiciona o valor absoluto de cada nível presente em `armor.Ab`: níveis positivos dobram e penalidades negativas são canceladas. A operação absoluta está em `0x1a20f20–0x1a20f28`, e o segundo bloco repete a operação para a outra categoria. O conjunto dos itens 336 e 337 adiciona `108_1`, `46_2` e `52_1` (pares empacotados em constantes nativas, ramo `0x1a229ec` em diante).

## Modo difícil

`HardModeMgr.AddUserAbilityByHardMode` (`0x1961724`) verifica primeiro o modo difícil e depois o nível em `DataMgr +0x640`. Os níveis ≥1 recebem `109_1`; ≥3 recebem `111_1`; ≥4 recebem `112_1`. Portanto, a habilidade 111 não deve ser presumida em toda run difícil. A API aceita `options.difficulty` e `options.hardLevel`, ou os campos equivalentes de estado (`state.difficulty`, `state.hardLevel` ou `state.scoring.hardLevel`). Se o modo difícil estiver ativo e o nível não for conhecido, essas habilidades permanecem desconhecidas, salvo observação efetiva explícita.

## Traços evoluídos e limites

`DataMgr.GiveTraitReward` (`0x1afb1c4`) percorre a lista de traços e chama `RewardTrait` (`0x1afb250`). O segundo método usa uma tabela de ramos e adiciona habilidades à lista persistente. Alguns efeitos de traços evoluídos são incrementais: os metadados de Arquimago, por exemplo, adicionam apenas mais um nível de Feitiçaria; a descrição completa inclui a habilidade retida anteriormente. A API soma a lista fornecida e não presume qual estado histórico deixou níveis retidos. Quando o traço evoluído foi informado sem o anterior e esse histórico altera as habilidades, pede níveis efetivos para as parcelas afetadas. Não acrescenta novamente bônus de atributos quando a ficha já contém valores finais.

As interações especiais de família/conjunto acionadas por habilidades 83/100 ainda não foram integralmente transcritas. Níveis afetados (14/24/52/61/62) ficam desconhecidos nesse caso, preservando os modificadores independentes usados pelos testes de atributos. A simulação de combate continua identificando habilidades cujo comportamento completo não foi reproduzido, mesmo quando o nível foi derivado com segurança.

## Integração e validação

`AtlasCombat.player` usa este módulo depois de resolver os atributos efetivos. Atributos agora podem conceder habilidades automaticamente. Parcelas desconhecidas são omitidas apenas da estimativa experimental de combate, com aviso explícito e `partial=true`; o objeto `abilityDerivation` preserva os níveis desconhecidos para quem precise de certeza maior. `AtlasTests` consome diretamente os níveis relevantes, sem converter valores desconhecidos em zero.

`ability-engine.test.cjs` verifica limiares, somas por atributos, alinhamento por faixas, itens/traços, substituição por níveis observados, fontes incompletas, traços evoluídos, fraquezas, maestrias e conjunto confirmado. Os testes anteriores de combate continuam verificando fórmulas, equipamento, observações, reversibilidade e todos os registros extraídos.
