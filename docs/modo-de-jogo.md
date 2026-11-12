# Modo de Jogo — primeira versão

[Abrir no Atlas](https://sahbiazin.github.io/life-in-adventure-wiki/#catalogo=game).

O modo acompanha a aventura que você joga no celular. Ele não se conecta ao jogo: você informa a ficha, escolhe o encontro que apareceu e confirma o resultado observado. A base é a versão 1.2.47, build 366. Diferenças em outras versões devem ser registradas como observações e correções.

## Começar uma run

1. Abra **Modo de Jogo** e preencha a ficha com os valores que o jogo mostra, incluindo os bônus atuais. Campos vazios significam **desconhecido**, não zero.
2. Adicione itens com a quantidade total, incluindo os equipados, e os traços e habilidades efetivas. Marque as listas como completas somente depois de conferir tudo. O Atlas não calcula bônus de equipamento, traço ou habilidade.
3. Anote a história principal, os contos e a dificuldade. Esses textos identificam a run; não ativam nem selecionam encontros automaticamente.
4. Crie os objetivos. O primeiro ainda não concluído tem prioridade; é possível promover outro objetivo. Há metas de itens, ouro, epílogos, histórias/contos, catálogo de itens/monstros e pontuação.

Uma nova run preserva as anteriores. É possível copiar as confirmações do catálogo da run selecionada, sem copiar sua ficha ou seu progresso.

## Durante o jogo

1. Busque palavras do encontro ou o ID exato, como `#346`. Use a tabela para diferenciar IDs iguais. Também há **Usar encontro na run** nos detalhes de eventos do Atlas.
2. Confira as escolhas e todos os resultados registrados. As etiquetas **Teste de Força**, **Teste de Inteligência** etc. identificam atributos que influenciam o sorteio e os ramos de sucesso/falha. São diferentes dos requisitos para liberar a opção, que aparecem como atendidos, não atendidos ou desconhecidos. A etiqueta não informa uma dificuldade mínima nem uma porcentagem de sucesso. Se o próprio jogo mostrar uma opção diferente, informe sua disponibilidade.
3. Uma **sugestão provisória** compara os efeitos acumulados e as próximas decisões até o fim registrado do encontro. Abra **Ver escolhas futuras e saldo do caminho** para consultar um cenário considerado, seus custos, recompensas e pendências. A indicação pode faltar quando há empate ou quando algum caminho não pôde ser avaliado até o fim. Os dados originais continuam acessíveis.
4. Depois de jogar, selecione **Foi este resultado**. Revise os valores estimados e substitua-os pelos que realmente apareceram no jogo. Confirme a conferência antes de salvar. Se o resultado não corresponder às opções, registre o ocorrido manualmente, com uma observação.
5. Ao salvar um resultado com continuação direta, o Atlas abre as **próximas escolhas do mesmo encontro**, preservando o texto de ligação e mostrando o percurso. Retornos ao mesmo nó atualizam os requisitos com o estado registrado. Só o resultado confirmado aplica efeitos; abrir a continuação não escolhe nem salva outra resposta. Sem continuação direta, volte à busca quando surgir outro encontro. Se a tela divergir, use **Escolher outro encontro** ou registre um resultado diferente.

O diário guarda o antes/depois, evento, escolha, resultado, observações e os objetivos usados para aquela decisão. **Conferir / corrigir ficha** registra ajustes manuais. Desfazer e refazer restauram o estado e a etapa da sequência; salvar uma nova ação depois de desfazer substitui o ramo desfeito. Runs encerradas podem ser reabertas. Os backups da primeira versão continuam compatíveis.

No Atlas, **Mapa de escolhas** conecta os nós das etapas seguintes aos resultados de origem, incluindo ramificações, convergências e retornos. Use a rolagem e o zoom para percorrer o diagrama. Mapas grandes começam com até quatro transições e 32 nós; **Mostrar mais etapas e ramificações** amplia esses limites, e cada destino também pode ser aberto diretamente. A lista abaixo do mapa oferece os textos das escolhas e resultados para leitura sem zoom. Isso descreve as conexões registradas, sem prever encontros aleatórios ou ignorar requisitos futuros.

## Como as sugestões funcionam

- A busca segue as transições diretas na mesma tabela até `nextEvent = -2`, o encerramento conhecido. Não prevê os próximos encontros aleatórios da run. Um custo inicial pode valer a pena por uma recompensa posterior; uma recompensa imediata pode ser ruim se o caminho exigir pagar mais depois.
- Cada resultado produz uma ficha estimada para a etapa seguinte. Requisitos de atributos, inventário, habilidades e estados são reavaliados nessa ficha. Opções futuras sabidamente indisponíveis são excluídas; opções de disponibilidade desconhecida não são presumidas liberadas e tornam a comparação parcial. A confirmação de disponibilidade pelo jogador vale somente para a escolha atual.
- Em um ponto de decisão, o planejador procura a melhor próxima escolha disponível. Em um sorteio, considera os resultados possíveis, em vez de escolher o resultado favorável. A decisão futura pode mudar conforme o item ou estado obtido no resultado anterior. Nós de desfechos sem texto de escolha são tratados pelo pior caso, sem escolher vitória no combate.
- O perfil **cauteloso** compara o pior saldo conhecido de cada caminho, com boas decisões nas etapas seguintes. O perfil de **valor esperado** combina probabilidades estáticas confirmadas em cada sorteio; onde elas faltam, usa o pior caso. Frações precisam ser válidas e somar 1; resultados de probabilidade estática zero ficam fora da comparação. Pesos brutos ou modificados por atributos não viram porcentagens.
- O saldo é avaliado no fim do caminho, em relação à ficha atual: receber e depois perder um item não equivale a encerrar com ele. O primeiro objetivo em aberto recebe peso 100, os demais peso 10, normalizados pela meta restante. Ouro e saúde conhecidos oferecem pequenos desempates; saúde a zero tem penalidade de risco. Não há classificação universal das escolhas.
- Itens de quantidade inicial desconhecida e objetivos de catálogo/história podem receber indicações de obtenção potencial por comandos conhecidos, sempre com aviso. Esses sinais não confirmam posse final, desbloqueio permanente, conclusão de história ou vitória.
- O cenário mostrado no plano é uma referência entre os ramos avaliados, não uma previsão do sorteio nem uma sequência garantida. A comparação também avalia os outros resultados. O Atlas recalcula ao registrar o que aconteceu; consultar o plano não aplica recompensas, não avança etapas e não escreve a run.

## Quando a comparação fica parcial

Efeitos ainda não modelados interrompem a busca daquele ramo; o planejador não preenche a continuação com consequências inventadas. Destinos especiais não documentados também não são tratados como um encerramento garantido. Ausência de uma escolha futura confirmadamente disponível, sobrevivência incerta antes da próxima etapa e repetições aleatórias não resolvidas são sinalizadas.

Retornos com mudança de estado são avaliados, inclusive quando desbloqueiam novas escolhas. Retornos ao mesmo nó e estado sem progresso são descartados como repetição, sem simular recompensas infinitas. Estados com ciclos dependem do percurso e não são reutilizados como se fossem independentes dele.

Para manter o celular responsivo, a busca tem limites de 64 etapas no percurso e 6.000 expansões de resultados, além da conferência de encerramentos imediatos. Se um limite for atingido, o plano informa a interrupção. Os limites do desenho do mapa são independentes: recolher ou expandir o mapa não altera a profundidade da recomendação.

Quando alguma alternativa disponível ainda tem análise parcial, a interface deixa de indicar uma melhor escolha para o encontro inteiro. Os caminhos conhecidos, cenários e pendências continuam acessíveis para ajudar a decidir manualmente. Probabilidades desconhecidas, isoladamente, permitem uma comparação pelo pior caso, explicitamente sinalizada.

## O que ainda é manual

**Combate e pontuação:** o modo não prevê vitória, dano completo nem pontuação final. Nós que guardam desfechos de combate sem texto de escolha são apresentados como ramos para registrar o observado, sem sugerir vitória ou derrota. A pontuação pode ser anotada. Quando maximizá-la é o objetivo principal, não aparece uma escolha apresentada como ótima para pontuação.

**Histórias e contos:** o texto da história não identifica automaticamente todas as etapas. Um epílogo alvo opcional permite orientar a busca, mas a conclusão da história continua sendo confirmada pelo jogador. Sem esse alvo, um objetivo principal de história não produz uma recomendação automática.

**Catálogo permanente:** obter um item, ver um monstro no encontro ou registrar um epílogo da aventura não comprova desbloqueio no catálogo do jogo. Só confirme quando tiver conferido. As confirmações ficam na run e podem ser copiadas para outra.

**Efeitos desconhecidos e estado oculto:** comandos ainda não modelados geram pendências. Corrigir os valores visíveis não confirma os estados ocultos da história; requisitos dependentes deles continuam desconhecidos. A revisão avançada permite registrar estados conhecidos, sem fingir que a execução completa foi validada.

As [pendências da simulação completa](preparacao-modo-jogo.md) e a auditoria do Atlas continuam disponíveis.

## Saves e backups

As runs são salvas em `localStorage`, na chave `life-in-adventure:runs:v1`, apenas neste navegador e endereço. Não há conta nem sincronização automática com outro celular ou computador. Limpar os dados do site pode apagar as runs.

Use **Exportar** para baixar um backup JSON da run selecionada. **Importar** valida o arquivo e cria uma cópia independente; não sobrescreve outra run. Para relatar uma divergência, guarde esse backup e descreva o que o jogo mostrou.

Se o armazenamento estiver bloqueado ou cheio, a run continua na memória durante a visita e aparece um aviso para exportar. Um save inválido é preservado e pode ser baixado para recuperação; novas ações ficam na memória. Se outra aba alterar os saves, esta aba bloqueia a gravação até você recarregar os dados, evitando sobrescrita silenciosa. Favoritos e histórico do Atlas usam outra chave e não são substituídos pelas runs.
