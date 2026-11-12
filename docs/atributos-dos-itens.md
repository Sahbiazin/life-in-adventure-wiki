# Atributos de escala dos itens

A base 1.2.47 contém 390 itens: 69 com um atributo de escala, 169 com dois e 152 sem fórmula de dano/defesa registrada. Os atributos aparecem nos cards e nos detalhes; os filtros **Atributo do item (escala)** e **Quantidade de atributos de escala** são separados das relações em descrições e efeitos.

| Item | Atributos na ordem do jogo | Campo |
|---|---|---|
| Adaga #0 | DES | Dano |
| Martelo de Guerra do Troll #18 | FOR | Dano |
| Adaga de Aparar #27 | DES, CON | Dano |
| Armadura Acolchoada #3 | SAB, CON | Defesa |
| Armadura de Couro #4 | CON, SAB (pesos iguais) | Defesa |
| Cota de Talas #5 | CON, SAB | Defesa |
| Armadura Dourada do Conquistador #107 | CAR, CON | Defesa |

São dependências da fórmula, não pontos de atributo concedidos pelo item nem requisitos mínimos para equipá-lo. A Adaga, por exemplo, tem componente `8,59 + 0,182 × DES`; o valor final também pode envolver outros modificadores da run. Os detalhes mostram coeficientes e conservam o registro original. Um item sem fórmula não recebe atributos inferidos pelo nome ou pela categoria. Bônus de habilidades, como o FOR do Elixir do Gladiador, continuam separados.

## Evidência estática do build 366

`InventoryItemPopup.ConstructDataString` (`0x1990880`) passa `Item.hp` (offset `0x78`, chamada `0x19915dc`) ou `Item.dmg` (`0x70`, chamada `0x1991878`) para `DataMgr.GetBattlePointTypes` (`0x1af8e44`). A lista é ordenada por coeficiente float32 decrescente, usando LINQ estável; o seletor `0x198042c` lê `FormatData.quantity`. São removidas repetições do mesmo atributo. Os índices 5/6/7 e 12/13/14 são convertidos nos seis ícones do jogo. `DataMgr.GetDmg` e `GetHp` multiplicam o valor efetivo do atributo pelo coeficiente e somam os termos. O campo interno `hp` representa defesa/saúde de combate do equipamento, não o atributo Saúde da run.

A identidade SHA-256 do binário e instruções representativas são verificadas por `scripts/verify_native_rules.py`, no relatório `docs/native-rules-evidence.json`. A correspondência é estática; não há validação dinâmica executando o jogo. `scripts/item_scaling.py` preserva entradas desconhecidas e o gerador mantém os campos originais intactos.
