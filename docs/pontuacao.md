# Pontuação da versão 1.2.47, build 366

O modelo usa a rotina ativa `HardModeMgr.CheckHardModeScore` (`0x195e240`) e a soma feita por `HardModeMgr.GetCurrentScore` (`0x196113c`). A janela moderna e o ranking usam esse caminho. `ScorePopup.Init` (`0x197af88`) mantém uma fórmula antiga no binário e **não foi usado como base** do planejador.

Fonte da inspeção: `extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so`, SHA-256 `0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25`, com os símbolos do `script.json` e os campos do `dump.cs`. A inspeção é estática; a equivalência com uma sessão real depende de registrar a mesma ficha e o mesmo histórico de feitos.

## Regra ativa

Existem 29 categorias. A rotina calcula os pontos de cada categoria, multiplica por `max(1, (scoreVersion + 1) × 1,5)` em precisão float32 e trunca o resultado para inteiro. O total é a soma das parcelas. O construtor atual de `DataMgr` inicializa `scoreVersion = 3`, portanto o multiplicador usual do build 366 é **6**. Essa versão é independente da dificuldade, do nível do modo difícil e do grau do aventureiro; o campo pode ser conferido na ficha avançada.

Na tabela abaixo, os valores são anteriores ao multiplicador. `n` representa o contador nativo daquela categoria.

| ID | Categoria | Pontos-base |
|---|---|---|
| 0 | Inimigos Derrotados | `100 × n` |
| 1 | Nêmesis Derrotada | Soma de `150 × desafio` dos IDs de monstros registrados |
| 2 | Bolsos Pesados | Patrimônio abaixo de 3.000: 0; de 3.000 a 3.999: 1.000; de 4.000 a 4.999: 2.000; de 5.000 em diante: 3.000 |
| 3 | Coletor | `100 × n` quando o contador armazenado é pelo menos 5; o registro automático da ficha atual só ocorre com pelo menos 7 itens da mesma categoria na mochila |
| 4 | Virtuoso | 3.000 quando o feito está registrado |
| 5 | Vilão | 2.000 quando o feito está registrado |
| 6 | Golpe de Sorte | `400 × n` |
| 7 | Mãos Desajeitadas | `500 × n` |
| 8 | Usa Todos os Meios | 2.000 com pelo menos 8 pares distintos de categoria/subcategoria entre os IDs de itens registrados |
| 9 | Casado | 2.000 quando registrado |
| 10 | Entusiasta de Poções | `100 × n` quando `n > 6` |
| 11 | Rápido em Tudo | 4.000 quando EXP chega a 100 com no máximo 160 passos; o feito registrado persiste |
| 12 | Avançado | 3.000 quando registrado |
| 13 | Reviravolta | `600 × n` |
| 14 | Sabor do Sucesso | `100 × n` |
| 15 | Talentoso | `1.000 × n` |
| 16 | Poder de Combate | `20 × trunc((soma dos seis atributos + poder nativo) / 7,5)` |
| 17 | Imortal | 0 nesta rotina |
| 18 | Invicto | 0 nesta rotina |
| 19 | Experiência | `100 × trunc(EXP)` |
| 20 | Espírito de Desafio | 0 nesta rotina |
| 21 | Punho Nuclear | Níveis registrados 1/2/3: 2.000/3.000/4.000 |
| 22 | Irritado, não é? | Níveis registrados 1/2/3: 3.000/3.000/4.000 |
| 23 | Morte Superada | 10.000 quando registrado |
| 24 | Sequência de Vitórias | A partir de 10: `1.000 + 200 × min(recorde, 30)` |
| 25 | Mestre das Escolhas | A partir de 5: `1.000 × min(recorde, 10)` |
| 26 | Última Resistência | `100 × n` |
| 27 | Sequência de Derrotas | A partir de 5: `2.000 + 200 × min(recorde, 15)` |
| 28 | Azarado | A partir de 5: `1.000 × min(recorde, 10)` |

Exemplo: ganhar 1 EXP representa **600 pontos** na parcela Experiência da versão 3. Ganhar 10 ouros abaixo do próximo patamar de patrimônio pode representar **zero pontos imediatos**. O valor estratégico do ouro ainda pode vir de compras e consequências futuras.

## Dados atuais e histórico

`state.scoring` mantém a versão, o poder observado e sua assinatura, passos conhecidos, nível do modo difícil e contadores históricos opcionais. Não informar um contador significa **desconhecido**. Marcar a lista como completa certifica que as categorias omitidas estão zeradas. Para as categorias booleanas, zero significa feito ausente; para sequências, o formato avançado é `[recorde, sequênciaAtual]`; para Nêmesis e Usa Todos os Meios, usam-se listas de IDs.

O patrimônio usa ouro mais os valores de todos os itens possuídos. A ficha já inclui os equipados no inventário, portanto eles entram uma vez só. Melhorias conhecidas usam `trunc(preço × 1,5)`. Itens guardados não têm uma marcação individual de melhoria nesta versão; o modelo conserva limites quando isso poderia mudar o patamar de patrimônio.

O contador Coletor vem de `HardModeMgr.CheckItemMoreThanSeven` (`0x1960c6c`): conta a lista de `Inventory`, agrupa pelo campo `Item.category` (`0x28`) e toma o maior grupo. O Atlas subtrai as cópias equipadas do inventário total da run para obter a mochila. Uma mochila incompleta ou equipamento não confirmado pode deixar essa parcela desconhecida. O registro automático só é atualizado quando esse maior grupo é pelo menos 7; depois de gastar itens, um feito anterior conhecido pode permanecer registrado.

Virtuoso/Vilão são feitos persistentes, não apenas o alinhamento atual. Atingir alinhamento `>= 25` ou `<= -25` pode confirmar o respectivo registro; voltar ao neutro não o apaga. De modo semelhante, o recorde de uma sequência permanece depois que a sequência atual é interrompida. Passos desconhecidos não são tratados como zero para conceder Rápido em Tudo.

## Poder e limites de certeza

A parcela 16 usa `Equipment.GetTotalBattlePoint` (`0x1a1ceb8`), e não o índice experimental do simulador de combates. Um poder observado só é reutilizado quando a assinatura continua compatível com os atributos, equipamento, grau, habilidades, traços e demais entradas relevantes. Mudanças invalidam essa observação. O modelo nativo de poder pode oferecer um resultado parcial quando há helpers especiais ainda não reproduzidos; esse resultado não torna a pontuação completa por si só.

A rotina nativa de Talentoso consulta as habilidades de nível 4 ou maior e atualiza o registro por `AddToHardModeChecker` (`0x195cf40`). O comportamento inclui atualizações no momento de consultar a pontuação. O Atlas preserva o contador conhecido e marca a parcela como incerta quando uma mudança da ficha pode criar novas habilidades evoluídas, evitando pressupor que esse histórico continua igual.

O bônus Reviravolta depende de vencer uma luta cuja chance calculada **pelo próprio jogo** era inferior a 20%. A estimativa experimental de `AtlasCombat` não comprova essa condição. Nesse caso, a projeção mostra um intervalo de incremento entre zero e `600 × multiplicador` por vitória em questão. Não se inventa uma frequência nem uma média para esse bônus.

## Comparação de caminhos

`AtlasScore.compare(antes, depois, index)` pode conhecer uma **variação** mesmo sem conhecer o total absoluto: parcelas desconhecidas e comprovadamente invariantes cancelam. Incrementos lineares confirmados são preservados em offsets, sem inventar um contador inicial igual a zero. Uma mudança de recorde histórico desconhecido permanece parcial.

`value` só está presente quando toda a variação foi calculada. `expected` é o subtotal das parcelas calculáveis e deve ser apresentado como parcial se `complete` for falso; não é uma previsão probabilística independente. `min`/`max` só são oferecidos quando todos os déficits remanescentes têm limites confirmados; `intervalComplete` identifica essa situação. O planejador deve usar esses limites para comparar dominância, sem substituir um intervalo por uma média arbitrária. Valores fora da faixa de inteiro nativo ficam sem valor exato.

## Verificações

`score-engine.test.cjs` cobre o multiplicador atual, a fórmula por patamares, melhorias e contagem única de equipamento, Coletor, a condição EXP/passos, observações de poder, feitos persistentes, sequências e recordes, cancelamento de parcelas invariantes, incrementos com histórico desconhecido, limites de Reviravolta, Talentoso e validação dos dados importados. Os testes de integração do planejador e de navegador verificam o uso dessas parcelas nas recomendações.
