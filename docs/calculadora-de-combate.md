# Calculadora de combate

A aba `#catalogo=combat` permite montar uma ficha independente com seis atributos, grau, traços e quatro espaços de equipamento. A lista pesquisável compara os 206 monstros do catálogo. O índice de poder e as porcentagens são **estimativas experimentais do Atlas**, não valores garantidos do jogo.

Em **Modo de Jogo → Equipamento e combate**, os atributos finais, traços e habilidades conhecidos vêm da ficha atual. O jogador informa o grau, os itens realmente equipados e suas melhorias. Selecionar um item não o adiciona à mochila. Quando o inventário está completo ou contém uma quantidade conhecida, a calculadora confere se há cópias suficientes. Ausência em uma mochila incompleta continua desconhecida.

Salvar a configuração cria uma correção reversível no diário. Ela acompanha o backup JSON, desfazer/refazer e a troca de run. Saves antigos recebem uma configuração desconhecida; não ganham equipamento ou grau presumidos. A calculadora independente usa `life-in-adventure:combat-calculator:v1`. Copiar uma run cria uma ficha independente e não escreve na run.

## Fórmulas e fontes

Investigação sobre `extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so`, SHA-256 `0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25`, com nomes de `dados-extraidos/1.2.47/il2cpp/script.json` e `dump.cs`.

- `DataMgr.GetDmg` (`0x1af92c0`): constante e termos `0_atributo_coeficiente`, mais `grau × 0,2 + 2,5`; esse acréscimo dobra para arma de duas mãos. Item melhorado multiplica o resultado por 1,1.
- `DataMgr.GetHp` (`0x1af9560`): constante e termos, mais `grau × 1,75 + 30`; item melhorado multiplica por 1,1. `hp` é defesa/saúde de combate e não a Saúde da aventura.
- `Equipment.GetMainhandDmg` (`0x1a24558`): sem arma, fórmula `2|0_5_0.03|0_6_0.03`.
- `Equipment.GetTotalHp` (`0x1a25c74`): soma as defesas dos espaços. Sem armadura, usa `40|0_13_0.4|0_14_0.4`, com o mesmo acréscimo por grau.
- `Equipment.GetBaseAttackSpeed` (`0x1a2d1a8`): base 1. O campo antigo `atkSpeed` dos itens não foi convertido em ataques por segundo.
- `UnitCtrl` construtor (`0x19b7764`): crítico e esquiva básicos 0,15; multiplicador crítico 2.
- `Equipment.GetDmgAbilities` (`0x1a275e0`), `GetHpAbilities` (`0x1a27ffc`), `GetAttackSpeedForItem` (`0x1a25234`), `GetTotalCriticalChanceForItem` (`0x1a25734`), `GetTotalCriticalRateForItem` (`0x1a25b44`) e `GetTotalDodgeChanceForItem` (`0x1a26ea8`): bônus numéricos de habilidades.
- `UnitCtrl.InitEnemy` (`0x19a7ff0`): habilidades fixas e variantes do monstro, modificadores numéricos e estados iniciais 1/2 com fatores de dano/defesa 0,8/1,2. A modificação antiga de `battleMin`/`battleMax` de comandos de evento não foi usada como fator de dano/defesa.
- `BattleCtrl.GetWinRateForEvent` (`0x1962c2c`): inicializa o personagem com dado neutro 10 e repete 100 combates, com passo de 0,01 segundo. Portanto, comparar dois números de poder não reproduz a porcentagem.
- `AbilityDataBase.GetAbilityData` (`0x1ab63a8`) fornece parâmetros das descrições de habilidades. O modelo inclui taxas básicas de furtividade, atordoamento, ataques múltiplos, regeneração, estabilidade, roubo de vida e crítico, além de algumas habilidades com efeitos literais nas descrições.

O Atlas executa **400 lutas por variante**, com semente reproduzível, ataques em ordem temporal e limite de 120 segundos/2.000 ações. O intervalo de Wilson de 95% expressa somente a variação estatística das simulações. Combates que atingem o limite permanecem inconclusivos e ampliam os limites, em vez de virar derrotas. Habilidades variáveis de monstros geram uma faixa entre cenários; não se presume uma distribuição uniforme.

O índice de poder usa defesa × fator de esquiva × dano esperado por segundo × fator de redução, com a escala de `UnitCtrl.GetBattlePoint` (`0x19a9ae4`). **Não é uma transcrição de `Equipment.GetTotalBattlePoint` (`0x1a1ceb8`)**. Serve para comparar configurações do próprio Atlas.

## Cobertura e limites

As habilidades de itens e traços são somadas. Níveis efetivos informados na ficha da run substituem essas somas; ajustes explícitos na calculadora têm precedência. Assim, um bônus não entra duas vezes. Os atributos finais não recebem novamente o +4 do traço. O modo de atributos base soma apenas os bônus fixos conhecidos de traços.

O modelo não reproduz integralmente o motor nativo: veneno, sangramento, resistências elementais, várias habilidades especiais, bônus de atributos que alteram níveis de habilidade, traços evoluídos, bônus condicionados à própria chance de vitória, regras especiais de dificuldade, ritmo de duas armas e algumas maestrias permanecem parciais. A interface lista os efeitos ignorados e avisa quando um efeito é apenas parcialmente coberto. É possível substituir componentes por valores observados; isso não completa a simulação dos efeitos especiais. Mesmo uma previsão de 100% não garante vitória.

Sem atributos, grau ou confirmação dos espaços, não aparece porcentagem. O estado inicial especial 4 e o monstro que deriva equipamento da ficha (habilidade 110) também ficam sem previsão. Um inimigo atual indefinido não é confundido com o monstro #0. Dados numéricos removem apenas caracteres Unicode de formatação, preservando os dados originais (caso de `hp` do Kior).

## Integração com eventos

Os modos direto e técnico usam `AtlasCombat` e a mesma configuração da run. Cada comando de combate pode mostrar inimigo fixo ou os candidatos explicitamente registrados no encontro. O cenário do resultado prevalece sobre o cenário configurado quando estiver informado.

O resumo de escolhas conserva até oito fichas distintas imediatamente antes de cada combate: os efeitos conhecidos das decisões anteriores entram na projeção. Assim, **Tesouro #360 → Aceitar** já mostra estimativas do Entearvore adiante. A faixa combina as projeções calculáveis e variantes de habilidade. Cenários com efeitos desconhecidos, lutas anteriores sem resultado ou limite de projeções aparecem como incompletos; não são apresentados como uma faixa exaustiva. As projeções não alteram a run.

O planejador de objetivos continua tratando combates como consequências a confirmar. As estimativas experimentais não autorizam escolher automaticamente a vitória, atribuir recompensas ou registrar monstros no catálogo. O dano real e o resultado continuam sendo observados no celular.

## Validação

`combat-engine.test.cjs` verifica fórmulas, melhorias, mão dupla, traços, níveis efetivos, fichas incompletas, inventário, efeitos sem cobertura, estados do inimigo, sorteios reproduzíveis, limites inconclusivos, variantes, saves antigos e configurações reversíveis. Também percorre todos os monstros e equipamentos e verifica projeções com atributos diferentes antes da mesma luta.

`combat_smoke.py` verifica navegação, pesquisa, filtros de nome/ID, persistência independente, equipamento inválido, layout móvel e temas, Kior, integração com Anão/Entearvore, igualdade entre os modos direto/técnico, desfazer/refazer e armazenamento negado. A suíte anterior continua cobrindo os registros manuais, mapas, filtros e navegação.
