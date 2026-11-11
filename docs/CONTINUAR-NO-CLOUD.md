# Continuidade do projeto no Codex Cloud

## Objetivo e preferências atuais

Construir uma wiki de Life in Adventure, usando os dados da versão mobile 1.2.47 (build 366). O foco atual é mapear todos os eventos, escolhas e consequências. Não classificar decisões como melhor escolha nesta etapa.

Manter o repositório GitHub privado. O aplicativo hospedado também foi publicado como privado. Nunca incluir credenciais no repositório ou no chat.

## Onde está o trabalho

- Repositório: https://github.com/Sahbiazin/life-in-adventure-wiki
- Branch principal verificada: `master`.
- Aplicativo: https://life-in-adventure-atlas.wildsnow5.chatgpt.site
- Código HTML/CSS/JS: `web/life-in-adventure/dist/`.
- Documentação geral: `README.md`.
- Mapas navegáveis em Markdown: `mapas/1.2.47/pt/index.md`.
- Banco original em português: `dados-extraidos/1.2.47/database/events.pt.json`.
- Banco parcialmente interpretado: `dados-extraidos/1.2.47/database/events.pt.decoded.json`.
- Evidências das regras: `docs/regras-confirmadas.md`.

O histórico integral do chat local não foi exportado. Este arquivo resume seu contexto para uma nova conversa Cloud.

## Estado concluído

Extraídos 3.683 nós de eventos em português, 8.043 escolhas e 12.196 resultados das seis tabelas do APK. Todos os destinos positivos têm referências existentes na mesma tabela. Valores negativos são fluxos especiais, não IDs de eventos fictícios. Há conteúdo em dez idiomas. A cobertura corresponde aos arquivos analisados; não comprova que todos os eventos estejam acessíveis em runs normais ou que todo efeito esteja interpretado.

O aplicativo contém tabela pesquisável, filtros por categoria e tags, ordenação, paginação, detalhes, códigos originais e mapas SVG com navegação entre eventos. As tags se baseiam na estrutura dos dados. Os botões Itens, Monstros, NPCs, Locais e Configurações são reservados e desativados; não implementar conteúdo nessas seções sem novo pedido.

Testadas busca, filtros combinados, paginação, estado vazio e navegação entre eventos. Os testes Python verificam preservação dos dados, referências do atlas e regras parcialmente decodificadas.

## Inicialização na nuvem

1. Confirmar acesso ao repositório privado e verificar a branch `master`.
2. Garantir que Git LFS esteja instalado. Executar `git lfs pull` e verificar que os arquivos necessários não sejam apenas ponteiros LFS. Cerca de 900 MB de objetos LFS foram enviados na publicação inicial.
3. Para trabalhar na interface, não é necessário npm: ela usa HTML, CSS, JavaScript e um arquivo de dados local. `node --check web/life-in-adventure/dist/app.js` verifica a sintaxe se Node estiver disponível.
4. Prévia HTTP: `python3 -m http.server 8765 --directory web/life-in-adventure/dist --bind 0.0.0.0`. Usar o encaminhamento de prévia suportado pelo ambiente.
5. Para extração/análise, criar um ambiente Python separado e instalar `requirements.txt`. Scripts usam caminhos relativos ao repositório; adaptar os comandos PowerShell da documentação para o shell Linux quando necessário.
6. Testes: `python3 -m unittest discover -s tests -v`. O teste de dados web requer o banco extraído e o bundle existente.

Não copiar tokens do Windows nem depender do emulador local. O emulador AOSP x86_64 inicialmente criado não executou o pacote ARM; a extração estática independe dele. Il2CppDumper foi usado localmente como ferramenta externa e está excluído do Git; suas saídas e as funções analisadas estão preservadas.

O projeto contém uma pasta `.openai/hosting.json` dentro do aplicativo com a identidade do Site existente. Reutilizá-la se houver pedido de publicar alterações. Não criar outro Site por engano.

## Próximas tarefas possíveis

Aguardar a próxima solicitação do usuário. A direção acordada é continuar melhorando o mapeamento e a consulta dos eventos. Permanecem pendentes a decodificação de outros códigos, efeitos globais, classificação de NPCs e locais e validação dinâmica no jogo.
