# Alinhamento — versão 1.2.47, build 366

O Alinhamento é o valor de `userData[3]`. Algumas decisões somam ou subtraem pontos; requisitos de eventos, escolhas e resultados podem consultar esse valor. O rótulo `d` encontrado em `Str.stat[3]` era insuficiente para identificá-lo, mas a função de exibição do jogo e as tabelas de tradução confirmam sua função.

## Nomes e faixas

Os nomes abaixo são os textos portugueses de `Str.alignmentList`, na ordem usada pelo jogo:

| Nome nesta versão | Valor |
|---|---|
| Maligno | Menor que −24 |
| Impuro | De −24, inclusive, até menos de −9 |
| Neutro | De −9, inclusive, até menos de 10 |
| Justo | De 10, inclusive, até menos de 25 |
| Bondoso | 25 ou mais |

Os limiares usam comparações de ponto flutuante. Para valores inteiros, isso corresponde a: até −25; −24 a −10; −9 a 9; 10 a 24; e a partir de 25. Um aumento de um ponto não implica, sozinho, mudar de faixa.

Em **Tesouro #80**, a escolha **Chamar os guardas** tem recompensa `0_3_1|5_122_9`: aumenta o alinhamento em 1 e define o estado da cadeia #122 como 9. Partindo de 9, o alinhamento passa a 10, de Neutro para Justo; partindo de 0, passa a 1 e continua Neutro.

Requisitos numéricos não equivalem necessariamente aos nomes completos das faixas. Por exemplo, `1_3_0` exige alinhamento pelo menos zero: apenas saber que o personagem é Neutro não comprova esse requisito, pois essa faixa também inclui valores negativos.

## Acompanhamento da run

Na ficha do Modo de Jogo, informe o nome mostrado no jogo ou, se souber, o valor numérico exato. Selecionar um nome informa apenas um intervalo; o Atlas não escolhe um ponto médio nem presume zero. Depois de uma decisão, a estimativa pode abranger duas faixas, como **Neutro ou Justo**. Conferir o novo nome no jogo permite atualizar a ficha manualmente.

O modelo mantém os limites inclusivos dos intervalos usando números float32, incluindo o último valor representável abaixo de cada limiar exclusivo. Alterações de alinhamento deslocam os extremos com arredondamento float32, preservando a possibilidade de atingir um limiar por arredondamento.

O planejador usa o valor ou o intervalo atualizado nas escolhas futuras. Um requisito fica atendido ou não atendido somente quando todo o intervalo permite concluir isso; caso contrário, continua desconhecido e a comparação pode ficar parcial. Aumentar o alinhamento não recebe, por si só, preferência sobre diminuí-lo: a orientação depende dos objetivos da run e dos caminhos disponíveis.

Saves e backups anteriores continuam compatíveis. O alinhamento ausente é carregado como **Não informado**, preservando os outros atributos e o diário. Não há reconstrução automática do alinhamento passado a partir de recompensas antigas ou suposição de valor inicial. Desfazer/refazer e exportar/importar preservam tanto valores exatos quanto intervalos.

## Evidência estática

- `StatusCtrl.ShowFameInfo`, RVA `0x19c6af0`: pede `GetUserData(3)` em `0x19c6bc4–0x19c6bcc` e classifica pelos limiares −24, −9, 10 e 25 em `0x19c6bd0–0x19c6c1c`. O índice resultante seleciona uma linha de `Str.alignmentList` em `0x19c7048–0x19c7084`.
- `Str..cctor`: grava o nome português **Alinhamento** em `0x1a7634c` e atribui a tabela a `Str.alignment`, offset estático `0x408`, em `0x1a763e4`. As gravações portuguesas das cinco faixas estão em `0x1a76480`, `0x1a765c4`, `0x1a7677c`, `0x1a76930` e `0x1a76af4`; a tabela vai para `Str.alignmentList`, offset `0x410`, em `0x1a76bb4`.
- `DataMgr.GetUserData`, RVA `0x1af7748`: o índice 3 segue a leitura do valor armazenado, sem os modificadores dos seis atributos principais.
- `DataMgr.ChangeUserData`: soma o delta em `0x1af7cd4`. O teste `index == 3` em `0x1af7d34–0x1af7d38` desvia do piso zero aplicado a outros índices. Valores negativos não devem ser truncados para zero.

`scripts/verify_native_rules.py` confere a identidade SHA-256 do ELF e as instruções críticas; registra os limiares, nomes e endereços em `native-rules-evidence.json`. As funções de interface podem ser inspecionadas com `scripts/disassemble_il2cpp.py 'StatusCtrl$$ShowFameInfo'` e `'StatusCtrl$$UpdateDisplay'`, usando o Python do ambiente virtual. Os dados originais dos eventos são preservados; apenas as anotações do Atlas são enriquecidas.

Esta confirmação é estática, sobre o binário fornecido do build 366. Ela não afirma validação por execução do jogo nem que os nomes ou as faixas sejam idênticos em outras versões.
