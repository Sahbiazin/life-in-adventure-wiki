# Life in Adventure — base para a wiki

Extração local da versão **1.2.47 (build 366)**, a partir do APKM fornecido pelo usuário.

## Aplicativo web

Site público no GitHub Pages: [Life in Adventure · Atlas de eventos](https://sahbiazin.github.io/life-in-adventure-wiki/).

Abra [o aplicativo HTML](web/life-in-adventure/dist/index.html) no navegador. Ele inclui regras legíveis com dados originais disponíveis, catálogos de itens, monstros, habilidades e traços conectados aos eventos, caminhos de chegada, links diretos, favoritos e histórico local. A tabela pesquisável, os filtros, a paginação e o mapa SVG continuam disponíveis. Funciona também localmente, sem servidor. [Instruções do aplicativo](web/life-in-adventure/README.md).

A publicação pelo GitHub Pages está preparada em [`.github/workflows/pages.yml`](.github/workflows/pages.yml), com [instruções de ativação](web/life-in-adventure/README.md#publicação-no-github-pages). O workflow envia somente o aplicativo estático.

## Foco atual: mapear todos os eventos e escolhas

Abra o [índice completo dos mapas em português](mapas/1.2.47/pt/index.md). Há uma página por nó, com todas as escolhas e resultados, requisitos, recompensas brutas, diagrama local e referências de entrada e saída. As opções não são classificadas.

O atlas cobre os 3.683 nós em português das seis tabelas do APK. São 7.074 referências positivas entre eventos, todas com destino existente, e 5.122 destinos especiais (`-1`, `-2`, `-3`). Isso não comprova que todos os nós estejam acessíveis em runs normais.

Para gerar novamente o atlas:

```powershell
.\.venv\Scripts\python.exe -X utf8 scripts/build_event_maps.py
```

Também são gerados o grafo completo em JSON, uma tabela CSV com os 12.196 resultados e um índice de dependências potenciais de estados. Dependências de estado e saltos diretos são registrados separadamente. O conteúdo gerado fica na pasta `mapas/`, excluída do Git junto com os demais dados extraídos.

## Resultado inicial

- 117 TextAssets extraídos; 115 são documentos JSON válidos.
- 3.683 registros de eventos em português, distribuídos entre seis tabelas.
- 8.043 escolhas e 12.196 resultados em português.
- 390 itens, 206 registros de monstros, 174 habilidades e 64 traços.
- Textos dos eventos disponíveis em dez idiomas, incluindo português.

Um registro de evento é um nó do roteiro: os números acima não representam 3.683 encontros independentes. As versões em outros idiomas não entram nessa contagem em português.

## Como reproduzir

Requer Python e o APK previamente extraído em `extracao-1.2.47/base`.

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -X utf8 scripts/extract_unity.py
.\.venv\Scripts\python.exe -X utf8 scripts/build_database.py
```

Leitura e extração usam [UnityPy](https://github.com/K0lb3/UnityPy). Os scripts não alteram o APK nem o jogo instalado. Os dados brutos e derivados estão excluídos do Git.

## Arquivos gerados

Dentro de `dados-extraidos/1.2.47/`:

- `TextAsset/`: conteúdo original dos arquivos de texto embutidos.
- `inventory.json`: objetos Unity, origem e caminho de exportação.
- `sources.json`: hashes SHA-256 dos pacotes Unity analisados.
- `errors.json`: objetos que não puderam ser interpretados.
- `database/events.pt.json`: registros de eventos em português e dados originais.
- `database/edges.pt.json`: escolhas e resultados em português.
- `database/events.json` e `database/edges.json`: todos os idiomas.
- `database/itemJson.json`, `monsterJson.json`, `abilityJson.json` e `traitJson.json`: catálogos com campos multilíngues organizados.
- `database/other_tables.json`: tabelas auxiliares, incluindo textos de finais e dicas.
- `database/summary.json`: contagens, hashes e limitações.

O mapa de inspeção está em [docs/primeiro-mapa.md](docs/primeiro-mapa.md).

## Decodificação inicial das regras

Foi recuperada a estrutura IL2CPP e realizada uma análise estática das funções ARM64. Consulte [regras confirmadas](docs/regras-confirmadas.md) para os códigos implementados, endereços e limitações.

Um exemplo documentado é [o veterano na taverna](docs/evento-taverna-veterano.md), com comparação dos efeitos registrados de cada escolha.

Para enriquecer a base após a extração:

```powershell
.\.venv\Scripts\python.exe -X utf8 scripts/decode_rules.py
.\.venv\Scripts\python.exe -X utf8 -m unittest discover -s tests -v
```

Saídas adicionais em `database/`: `events.pt.decoded.json`, `decoder-coverage.json` e `rule-evidence.json`. Regras desconhecidas continuam preservadas sem interpretação. O campo `probability_static` só é preenchido no subconjunto de resultados neutros com pesos constantes e sem requisitos condicionais.

## Identificadores e evidência

O identificador composto é `idioma:tabela:id`, por exemplo `pt:EventMain:0`. IDs de tabelas diferentes não são tratados como o mesmo evento. Cada resultado preserva o índice da escolha e do resultado no arquivo de origem.

O normalizador verifica IDs duplicados dentro de uma tabela/idioma e a existência do evento de origem de cada resultado. Isso valida a estrutura extraída, não o comportamento em jogo.

## O que ainda precisa ser resolvido

Os campos originais `required`, `chance`, `reward`, `type`, `nextEvent` e `place` continuam preservados. Há interpretação parcial dos três primeiros no arquivo enriquecido. Um valor numérico em `chance` é um peso, não uma porcentagem. A lógica de saltos e sentinelas ainda não foi inteiramente documentada.

O foco atual é a cobertura dos eventos e escolhas. Continuam pendentes outros códigos, consequências globais, probabilidades com modificadores e validação dinâmica. NPCs e locais ainda não foram separados em catálogos próprios.

O inventário registra 20.993 erros de leitura de objetos `MonoBehaviour`, principalmente por ausência de estruturas de tipos específicas do jogo. Os 117 TextAssets foram extraídos sem erros; os eventos JSON vêm deles. Tabelas Addressables de localização encontradas se referem ao nome do aplicativo; o conteúdo narrativo está nos TextAssets.

## Execução no emulador

O pacote fornecido contém bibliotecas `arm64-v8a` e `armeabi-v7a`. A instalação na imagem AOSP x86_64 usada inicialmente falhou com `INSTALL_FAILED_NO_MATCHING_ABIS`. A extração estática acima independe da instalação. A compatibilidade de um novo ambiente para executar o jogo ainda precisa ser validada.

## Preparação para o Modo de Jogo

O Atlas inclui uma [auditoria das regras e pendências](docs/preparacao-modo-jogo.md), com novos requisitos interpretados, epílogos e dependências de estado. O Modo de Jogo ainda não foi implementado. A cobertura mede interpretação estática, não prontidão de um simulador.
