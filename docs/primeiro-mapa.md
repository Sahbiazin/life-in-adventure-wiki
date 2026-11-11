# Primeiro mapa de inspeção — EventMain, IDs 0 a 5

Origem: versão 1.2.47, `EventMain4`. Texto em português extraído do jogo.

As setas abaixo representam `nextEvent` bruto. O significado de `type`, os saltos entre tabelas e os códigos negativos ainda precisam ser confirmado no código. Nenhuma Melhor Escolha foi atribuída.

```mermaid
flowchart TD
  E0["EventMain · 0"]
  C0_0["Inscrever-se"]
  E0 --> C0_0
  R0_0_0["type=2 / chance=1 / nextEvent=1"]
  C0_0 --> R0_0_0
  R0_0_0 -.-> E1
  C0_1["Ignorar"]
  E0 --> C0_1
  R0_1_0["type=2 / chance=1 / nextEvent=-2"]
  C0_1 --> R0_1_0
  E1["EventMain · 1"]
  C1_0["Me deixe passar"]
  E1 --> C1_0
  R1_0_0["type=2 / chance=1 / nextEvent=2"]
  C1_0 --> R1_0_0
  R1_0_0 -.-> E2
  C1_1["Procurar outro caminho"]
  E1 --> C1_1
  R1_1_0["type=1 / chance=13 / nextEvent=3"]
  C1_1 --> R1_1_0
  R1_1_0 -.-> E3
  R1_1_1["type=1 / chance=13 / nextEvent=3"]
  C1_1 --> R1_1_1
  R1_1_1 -.-> E3
  R1_1_2["type=0 / chance=1 / 0_14_1 / nextEvent=2"]
  C1_1 --> R1_1_2
  R1_1_2 -.-> E2
  E2["EventMain · 2"]
  C2_0[""]
  E2 --> C2_0
  R2_0_0["type=2 / chance=1 / nextEvent=-2"]
  C2_0 --> R2_0_0
  C2_1[""]
  E2 --> C2_1
  R2_1_0["type=2 / chance=1 / nextEvent=3"]
  C2_1 --> R2_1_0
  R2_1_0 -.-> E3
  R2_1_1["type=2 / chance=1 / nextEvent=-3"]
  C2_1 --> R2_1_1
  E3["EventMain · 3"]
  C3_0["Fugir"]
  E3 --> C3_0
  R3_0_0["type=2 / chance=1 / nextEvent=-2"]
  C3_0 --> R3_0_0
  E4["EventMain · 4"]
  C4_0["Ajudar pioneiros"]
  E4 --> C4_0
  R4_0_0["type=2 / chance=1 / nextEvent=5"]
  C4_0 --> R4_0_0
  R4_0_0 -.-> E5
  C4_1["Ajudar elfos"]
  E4 --> C4_1
  R4_1_0["type=2 / chance=1 / nextEvent=12"]
  C4_1 --> R4_1_0
  E5["EventMain · 5"]
  C5_0[""]
  E5 --> C5_0
  R5_0_0["type=2 / chance=1 / nextEvent=6"]
  C5_0 --> R5_0_0
  R5_0_1["type=2 / chance=1 / nextEvent=6"]
  C5_0 --> R5_0_1
  C5_1[""]
  E5 --> C5_1
  R5_1_0["type=2 / chance=1 / nextEvent=7"]
  C5_1 --> R5_1_0
  R5_1_1["type=2 / chance=1 / nextEvent=-3"]
  C5_1 --> R5_1_1
  R5_1_2["type=2 / chance=1 / nextEvent=-3"]
  C5_1 --> R5_1_2
```
