# Desfechos e recompensas de combate

Fontes: `EventCtrl.ResultBattle` (`0x1aa09a4`), `BattleCtrl.BattleEnd` (`0x1969c68`), `GetRewardItems` (`0x196ac44`) e `HardModeMgr.ApplyHardModeGoldPenalty` (`0x1961934`) da versão 1.2.47/build 366. A identificação dos símbolos usa o `script.json` e o ELF documentado nos demais modelos.

`ResultBattle` chama `ClickEventButton` com **escolha 0 na vitória e 1 na derrota**. O resultado dentro dessa escolha ainda é selecionado por `GetResultIndex`, com seus pesos e requisitos. `AtlasOutcomes.classify` exige contexto de combate explícito e a continuação correta; texto vazio sozinho não identifica vitória/derrota.

Antes do resultado do evento, vencer acrescenta `monster.fame` à EXP e o ouro do monstro. Ganancioso (traços 1/21) multiplica o valor por `1.15f`; a rotina usa arredondamento para o inteiro par nos empates. Quando a penalidade nativa está ativa pela presença de Fome Insaciável (111), o valor perdido é `max(trunc(float32(valor − float32(valor × 0.8f))), 1)`, não simplesmente 20% arredondados do valor final. O nível difícil conhecido permite determinar essa presença; dificuldade sem nível ou habilidade conhecida pode deixar o valor desconhecido.

Derrota não aplica uma perda universal de Saúde/Sanidade nessa rotina: as perdas vêm do reward do evento. A habilidade 75 pode conceder ouro na derrota em função do desafio. A habilidade 74 oferece uma restauração aleatória na vitória, modelada por três alternativas (70% sem restauração, 15% Saúde, 15% Sanidade); o registro manual mantém os valores inconclusivos até conferência.

`GetRewardItems` retorna uma lista vazia nesta build. Não há um item genérico de loot a inventar nessa chamada; os itens dos eventos continuam vindo dos rewards correspondentes.

A EXP pode elevar o grau uma vez no fim da luta. A tabela `FameLevel.requireFame` é `[0, 5, 10, 15, 20, 30, 40, 50, 60, 70, 80]`, extraída do campo estático de 44 bytes ligado a `FameLevel..cctor` (`0x19c35c4`). A distribuição posterior dos pontos de atributo continua dependendo do jogador.

O módulo `outcome-engine.js` reúne essas regras e as chances experimentais de `AtlasCombat`. Pools de inimigos e habilidades variáveis mantêm faixas, sem presumir pesos uniformes. Alterações de estado são puras e cada alternativa mantém sua própria ficha. Recompensas financeiras diferentes entre candidatos podem permanecer desconhecidas.

O código nativo desbloqueia o monstro no catálogo em `BattleEnd`, inclusive na derrota. A projeção pode usar essa informação para orientar um objetivo, mas o catálogo manual da run só é confirmado pelo jogador. Iniciar uma luta ou consultar uma estimativa não registra um monstro.

`outcome-engine.test.cjs` valida classificação, inimigo atual, faixas, ambiente, recompensas, dificuldade, grau, curas e ausência de mutações. A integração de navegador verifica Tesouro #80 → #81: com ficha normal e traços completos, vitória acrescenta 1 EXP/8 ouros genéricos mais 1 EXP/5 ouros do evento, chegando a 2 EXP/113 ouros a partir de 0 EXP/100 ouros. Nada é concedido antes de registrar o desfecho.
