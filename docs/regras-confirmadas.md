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

Os demais índices permanecem com nomes técnicos no decodificador até documentarmos sua correspondência.

## Sorteio de resultados

`GetTotalChance`, RVA `0x1A99D04`, soma pesos inteiros:

- Token numérico isolado: quantidade truncada em direção a zero.
- Token `0_indice_fator`: `trunc(GetUserData(indice) * fator)`.
- Cada parcela é truncada separadamente; não se trunca apenas a soma final.

`GetResultIndex`, RVA `0x1A992C0`, filtra resultados pelos requisitos, repete seus índices conforme o peso e sorteia uniformemente nessa lista. Resultados `type == 0` recebem modificadores adicionais; resultados `type == 1` podem receber penalidade do modo difícil. Portanto, **peso bruto não é probabilidade final**.

O decodificador só informa probabilidades estáticas quando todos os resultados da escolha têm requisitos vazios, `type == 2` e pesos constantes. Outros casos recebem `null`, não probabilidades inventadas. Uma única alternativa com peso positivo nesse subconjunto é determinística.

## Conexões

`nextEvent` é usado como índice da lista de eventos atual no caminho comum de `ClickEventButton`, `0x1A8EE68–0x1A8EED8`. O `type` do resultado não é o enum `eEvent` que identifica tabelas.

O valor `-2` gera o botão que encerra a apresentação do encontro atual e permite continuar a aventura, em vez de indicar o nó de ID negativo de uma tabela. Não significa que toda a cadeia de história terminou: flags podem habilitar futuros encontros. Outros sentinelas continuam pendentes de documentação completa.

As seis tabelas em português foram verificadas: em todas, o `id` de cada registro coincide com sua posição na lista.

## Limites atuais

Não há validação dinâmica no emulador. Há outros tipos de requisito e recompensa ainda desconhecidos. As correspondências acima cobrem posse e transferências diretas de itens; outras operações de inventário, combates, finais e modificadores completos de chance continuam pendentes. A análise também encontrou lógica de conquistas fora de `reward`, na função `CheckAchievement`: recomendações devem declarar seu objetivo e não presumir que esse campo descreve todos os efeitos do jogo.
