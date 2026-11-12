# Atlas de eventos — wiki HTML

Abra `dist/index.html` no navegador ou sirva a pasta `dist`. O aplicativo usa apenas arquivos locais, sem `fetch`, bibliotecas externas ou conta de usuário.

## Conteúdo e navegação

- **Eventos:** 3.683 nós em português, 8.043 escolhas e 12.196 resultados da versão 1.2.47, build 366.
- **Catálogos:** 390 itens, 206 monstros, 174 registros de habilidades (incluindo variantes) e 64 traços, além de 189 epílogos principais e 165 epílogos de contos. Cada registro mantém os campos originais, além do nome e da descrição em português. Variantes de habilidade usam a chave `ability:id:number`, pois o ID sozinho não é único.
- **Regras legíveis:** requisitos de atributos, estados de história, posse/ausência de itens e consequências conhecidas aparecem em português. Códigos desconhecidos continuam sinalizados. O registro original completo, os requisitos das escolhas e os resultados podem ser expandidos para comparação. Alterações de atributos podem envolver limites e outros efeitos do jogo.
- **Conexões:** requisitos, concessões e remoções de itens apontam para o catálogo; cada item lista as ocorrências inversas com evento, escolha e resultado. Monstros listados no encontro e habilidades nos campos dos catálogos também são navegáveis. Menções textuais são identificadas separadamente e não comprovam uma recompensa ou requisito. Nomes ambíguos são omitidos das menções automáticas; entre nomes sobrepostos prevalece o mais longo.
- **Caminhos de chegada:** o terceiro separador do evento mostra os resultados que apontam para ele, com requisitos de entrada, escolha e resultado na origem. As referências ficam na mesma tabela; IDs iguais em tabelas diferentes não são unidos. Isso não representa todas as regras que iniciam encontros.
- **Sequências de escolhas:** o mapa conecta as próximas etapas do encontro e seus ramos, incluindo convergências e retornos, com expansão para mapas grandes e uma lista de leitura. Os testes de atributos aparecem nas escolhas, separados dos requisitos de desbloqueio, e identificam os ramos de sucesso/falha sem inventar a chance final. No Modo de Jogo, confirmar um resultado abre sua continuação direta com o texto de ligação; desfazer/refazer restaura a etapa.
- **Links diretos:** “Copiar link” abre exatamente o registro selecionado, preservando o ID e a tabela. Exemplo de fragmento de evento: `#evento=EventTreasure%3A346`; de item: `#catalogo=item&registro=item%3A181`. Links antigos de eventos continuam funcionando. Os botões Voltar/Avançar do navegador acompanham as consultas. Se o navegador impedir a cópia automática, o endereço aparece em um campo selecionável.
- **Caderno local:** estrelas guardam eventos e registros nos favoritos. O histórico mantém as últimas 100 consultas, sem repetições, da mais recente à mais antiga; pode ser limpo na própria seção. Ambos usam `localStorage`, na chave `life-in-adventure:notebook:v1`, apenas neste navegador e origem. Se o armazenamento estiver bloqueado, continuam funcionando na memória durante a visita, com aviso. Não há sincronização entre dispositivos.
- **Modo de Jogo:** ficha inicial com valores efetivos, inventário, traços e habilidades, objetivos ordenados, busca do encontro observado e comparação provisória das escolhas. O jogador seleciona e confere o resultado real antes de atualizar a ficha. Inclui correções, diário, desfazer/refazer, várias runs e backup JSON. Os saves usam a chave separada `life-in-adventure:runs:v1`. Veja o [guia e os limites](../../docs/modo-de-jogo.md).
- **Planejamento do encontro:** as sugestões comparam o saldo até o fim das sequências diretas, reavaliando escolhas futuras com a ficha estimada de cada etapa. Diferenciam decisões do jogador de sorteios e desfechos de combate. O plano mostra um cenário considerado e seus avisos, sem alterar a run. Regras desconhecidas ou limites de busca geram análise parcial, sem uma indicação de melhor escolha para o encontro inteiro.

A busca ignora acentos. Nos eventos, consulta o texto, as escolhas, os resultados, os códigos e as regras legíveis; nos catálogos, nome, descrição e campos originais. `#346` procura o ID exato. As tags de eventos são combinadas com E, junto à categoria e à busca. Ordenação e paginação também estão disponíveis nos catálogos e no caderno.

As descrições podem conter marcadores como `{0}` e fórmulas que dependem da aventura. Esses valores não são preenchidos por estimativa. As probabilidades estáticas só aparecem no subconjunto neutro documentado em `docs/regras-confirmadas.md`; peso bruto não é probabilidade final. O rodapé e os detalhes identificam a versão e a análise estática parcial, sem validação em jogo.

## Gerar e executar

Na raiz do repositório, com os dados extraídos em `dados-extraidos/1.2.47/database`:

```sh
.venv/bin/python web/life-in-adventure/build_data.py
.venv/bin/python -m http.server 8765 --directory web/life-in-adventure/dist --bind 127.0.0.1
```

No Windows, use o Python do seu ambiente virtual. A geração usa apenas a biblioteca padrão, o decodificador do repositório e os JSONs originais; não depende de `events.pt.decoded.json`. Anotações e conexões são acrescentadas ao bundle sem modificar os registros fonte. O bundle é substituído apenas depois de a geração terminar.

## Validação

Na raiz:

```sh
.venv/bin/python -X utf8 -m unittest discover -s tests -v
node --check web/life-in-adventure/dist/app.js
node --check web/life-in-adventure/dist/game-engine.js
node --check web/life-in-adventure/dist/game-mode.js
node --test web/life-in-adventure/tests/game-engine.test.cjs
```

Para o teste funcional de navegador, use um Python com Playwright e um Chromium instalado (não é uma dependência da aplicação):

```sh
python web/life-in-adventure/tests/browser_smoke.py
python web/life-in-adventure/tests/game_mode_smoke.py
```

O teste abre seu próprio servidor em uma porta disponível e o encerra ao terminar. `CHROMIUM_PATH` permite indicar outro executável (padrão `/usr/bin/chromium`). A suíte verifica catálogos e variantes, regras e dados originais, conexões nos dois sentidos, caminhos de chegada, links diretos e navegação, favoritos e histórico persistentes, armazenamento bloqueado, tela móvel e os arquivos locais servidos por interceptação com rede desativada. Esta última estratégia permite testar o aplicativo offline mesmo quando uma política do Chromium bloqueia URLs `file://`.

Os testes do motor verificam requisitos com dados desconhecidos, objetivos e prioridades, efeitos parciais, todos os 12.196 resultados, importação e reversibilidade. O planejador tem cenários de custos e recompensas futuros, metas temporárias perdidas depois, opções desbloqueadas ou bloqueadas pelo estado, políticas que mudam após sorteios, probabilidades em várias etapas, combate, ciclos, convergências e limites de busca. A suíte do Modo de Jogo verifica a ficha, sugestões que mudam conforme o objetivo, o contrato real `EventNormal:466 → 467` com recompensa futura, consulta do plano sem aplicação de efeitos, análise parcial, confirmação do observado, correções, diário, persistência, backups, runs independentes, tela móvel e proteção contra sobrescrita por outra aba ou por um save inválido.

## Publicação no GitHub Pages

Site publicado: [Life in Adventure · Atlas de eventos](https://sahbiazin.github.io/life-in-adventure-wiki/).

O workflow `.github/workflows/pages.yml` publica somente os seis arquivos da pasta `dist`, sem incluir o APK ou os arquivos de extração no site. Ele verifica a estrutura do bundle, a sintaxe dos scripts e os testes do motor. Usa o bundle já versionado; depois de alterar a geração dos dados, atualize o bundle antes do envio.

Para a primeira publicação, o repositório precisa ter o GitHub Pages ativado com **Settings → Pages → Build and deployment → Source → GitHub Actions**. Em uma conta gratuita, mantenha o repositório público. A publicação é executada nos envios para `master` que alteram o aplicativo ou o workflow; também pode ser iniciada em **Actions → Publicar atlas no GitHub Pages → Run workflow**.

Tornar o repositório público permite visualizar e copiar seu conteúdo, mas não dá permissão de escrita a visitantes. Somente o proprietário e pessoas/equipes com permissão de escrita podem enviar alterações. Pull requests de terceiros não publicam o site: o workflow não é acionado por pull requests.

## Auditoria e preparação do Modo de Jogo

O painel “Cobertura das regras” informa a cobertura estática dos campos não vazios e os limites atuais. Nos eventos, “Estados e dependências” permite consultar leituras e alterações do mesmo estado, separadas das transições diretas e sem garantir desbloqueio. Os epílogos são navegáveis por suas referências nos eventos, com identificação separada entre histórias principais e contos. O registro de um epílogo na aventura não comprova seu desbloqueio permanente no catálogo.

Execute `.venv/bin/python scripts/audit_rules.py` antes de gerar os dados quando atualizar regras; isso mantém `docs/atlas-readiness.json` sincronizado com o bundle. A geração do bundle calcula a mesma auditoria automaticamente. Consulte `docs/preparacao-modo-jogo.md` e `docs/regras-confirmadas.md` para o que ainda impede uma simulação completa. O Modo de Jogo é um acompanhamento manual com sugestões provisórias, não um simulador completo.
