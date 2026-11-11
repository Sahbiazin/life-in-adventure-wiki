# Atlas de eventos — aplicativo HTML

Abra `dist/index.html` no navegador. A busca, os filtros e os detalhes também funcionam sem servidor e sem conexão: o conjunto de dados é carregado como um script local, sem `fetch` ou bibliotecas externas.

O aplicativo contém os 3.683 nós em português, 8.043 escolhas e 12.196 resultados da versão 1.2.47. A busca ignora acentos e consulta texto do evento, escolhas, resultados e códigos. `#346` encontra o ID exato em todas as tabelas. As tags selecionadas são combinadas com E; a categoria pode ser combinada com busca e tags.

As tags derivam da estrutura dos arquivos: tipo de evento, presença de requisitos/recompensas, múltiplos resultados, continuação, destino especial e ausência de texto inicial. Não são classificações de qualidade das escolhas.

Cada linha abre um diálogo com todos os resultados e um mapa SVG navegável. IDs positivos levam à referência na mesma tabela; valores negativos ficam como destinos especiais. Os textos são inseridos com escaping HTML e as marcações de apresentação do jogo são removidas apenas da exibição. Os dados originais permanecem disponíveis nos detalhes.

Itens, Monstros, NPCs, Locais e Configurações são botões desativados, reservados para futuras etapas.

Para atualizar os dados a partir da extração local:

```powershell
python build_data.py
```

Para servir via HTTP local:

```powershell
python -m http.server 8765 --directory dist --bind 127.0.0.1
```
