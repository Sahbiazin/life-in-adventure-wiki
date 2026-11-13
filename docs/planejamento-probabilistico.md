# Planejamento por objetivos, pontuação e risco

O planejador percorre as escolhas posteriores do encontro com uma ficha projetada para cada resultado. Ele não escreve essa ficha na run. A mesma análise alimenta os modos técnico e direto.

## Critério

1. Compara o progresso dos objetivos em aberto, na ordem definida pelo jogador.
2. Aplica o limite de sucesso da run, **60% por padrão**, configurável em Objetivos. O limite também se aplica à sobrevivência calculável da sequência.
3. Quando os objetivos não diferenciam os caminhos, compara a variação **esperada** de pontuação nativa. Os resultados de falha continuam entrando na média. O perfil prudente/média dos objetivos permanece disponível; o desempate por pontos usa a expectativa calculável.

O limite considera a sequência, não só o primeiro teste: dois testes independentes de 80% dão 64% de chance de ambos terem sucesso. Se o jogador escolher mínimo de 65%, esse caminho deixa de ser candidato. Decisões posteriores usam as condições e a ficha obtidas em cada ramo; a política pode mudar depois de um sorteio.

Passar do limite não garante uma boa troca. Uma falha que perde um patamar de patrimônio pode tornar negativa a pontuação esperada de uma opção com 70% de sucesso. O planejador inclui esse custo, em vez de comparar apenas a recompensa favorável.

Empates, dados ausentes, efeitos sem modelo, caminhos inconclusivos e limites de busca continuam podendo deixar o encontro sem indicação. Os planos expõem os motivos. Histórias e confirmações de catálogo que dependem de observação não são declaradas concluídas apenas por uma projeção.

## Modelos compartilhados

- [Testes de atributos](testes-de-atributos.md): urna de tickets inteiros, modificadores de atributos/habilidades, requisitos e dificuldade. Uma chance neutra estática não substitui uma chance desconhecida da ficha atual.
- [Habilidades efetivas](habilidades-efetivas.md): atributos, equipamento confirmado, traços, conjuntos, nível difícil e observações que substituem os níveis derivados.
- [Pontuação](pontuacao.md): rotina moderna de 29 categorias, contadores persistentes, patrimônio por faixas e EXP. Comparações podem cancelar parcelas desconhecidas que permanecem invariantes; uma parcela desconhecida modificada não é presumida zero.
- [Poder nativo](poder-nativo.md): número usado na pontuação, separado do índice experimental da simulação de combate. Observações são vinculadas à ficha validada; alterações podem invalidá-las.
- [Combates](desfechos-de-combate.md): vitória e derrota são probabilizadas, com recompensas genéricas e recompensas do evento em etapas separadas.

Itens ganhos entram no patrimônio, nos objetivos e nos requisitos das próximas escolhas; itens consumidos deixam de estar disponíveis. O modelo mantém os espaços equipados informados: receber um item não o equipa automaticamente. Compras e encontros aleatórios externos à sequência conhecida não são simulados como se fossem garantidos.

## Registro e compatibilidade

`run.policy.minSuccessProbability` guarda o critério da run. `state.scoring` guarda a versão da fórmula, poder observado, contadores, passos e projeções históricas. Saves anteriores do build 366 recebem os campos novos com defaults compatíveis; ausência de histórico continua desconhecida.

Resultados de testes registrados atualizam os feitos correspondentes. Projeções mantêm incrementos lineares mesmo quando o total inicial é desconhecido, e marcam recordes não calculáveis como incertos. Ao informar contadores reais, a ficha permite reconciliar as projeções para evitar duplicação.

Uma vitória efetivamente registrada após um comando de combate acrescenta EXP/ouro nativos **uma vez**, antes do reward do evento. Desfazer/refazer e backups preservam o estado completo. Consultar uma chance ou mapa não confirma vitória nem altera o catálogo manual.

## Validação

`planning-engine.test.cjs` cobre o desempate sem objetivos, patrimônio por faixas, custos e recompensas posteriores, objetivos relevantes/irrelevantes, sucesso acumulado, custo da falha, empate, modificadores desconhecidos, combate probabilístico e compatibilidade dos backups. As suítes dos modelos verificam as fórmulas e os limites específicos. `planning_smoke.py` valida o critério, chances nos dois modos, fichas incompletas, poder observado e vitória registrada com desfazer/refazer no navegador.

As fórmulas foram investigadas nos arquivos da versão 1.2.47/build 366. Combate continua experimental e há habilidades especiais, escolhas de distribuição de atributos após subir de grau e feitos que exigem conferência no celular. As recomendações permanecem provisórias onde esses dados afetarem o caminho. A análise é do encontro conhecido, não uma prova da melhor pontuação possível da aventura inteira.
