# Base necessária para o Modo de Jogo

Estado do Atlas: **ainda não pronto para simulação completa**. Não há Modo de Jogo nem recomendação automática de melhor escolha.

## Resolvido nesta etapa

- Nome dos seis atributos principais, saúde máxima e sanidade máxima, com correspondência de índice confirmada no inicializador nativo.
- Novos requisitos de habilidades, presença/ausência de traços, estados de contos, estados diferentes do esperado, sexo e registros de epílogos.
- Distinção entre estado de uma história (`mainEventList`), conto (`subEventList`), cadeia de eventos (`chainEventList`) e listas de epílogos desta aventura.
- Condições de ativação/seleção preservadas no requisito de conto; igualdade do estado não implica disponibilidade do encontro.
- Registro e remoção de epílogos com identificação composta, incluindo 189 epílogos principais e 165 de contos em português, conectados aos eventos correspondentes.
- Índice de leitura/escrita dos estados com referências ao evento e à escolha/resultado. São dependências possíveis, não desbloqueios garantidos.
- Auditoria de cobertura visível no Atlas e relatório reproduzível com comandos pendentes e exemplos reais.
- Entradas inválidas mantidas como desconhecidas, sem quebrar a geração nem gerar probabilidades inventadas.

## Pendências antes de recomendar decisões automaticamente

| Área | Falta confirmar/modelar | Critério de conclusão |
|---|---|---|
| Condições restantes | Grupos de inventário, condições especiais e formatos anômalos listados na auditoria | Cada comando com modelo testado ou bloqueio explícito de recomendação |
| Efeitos e combate | Comandos tratados fora de `GiveRewardAndSetRewardText`, batalhas, mudanças de traços/habilidades, itens especiais e efeitos indiretos | Resultado observado reproduzido para cenários de referência |
| Probabilidades | Filtragem por condições, pesos modificados por atributos, habilidades, dificuldade e estado | Comparação com sorteios e modificadores do jogo; não converter peso bruto em porcentagem |
| Encadeamento | Sorteio/ativação dos encontros e sentinelas ainda não documentados | Separar transições diretas, dependências de estado e regras de seleção |
| Pontuação | Fórmulas e entradas dos modos normal/difícil | Reproduzir pontuações de runs conhecidas com a mesma dificuldade |
| Catálogo permanente | Quando itens, monstros e epílogos contam como registrados; conquistas fora de `reward` | Confirmar desbloqueio no jogo, além da mera obtenção/menção |
| Validação dinâmica | Execução compatível da versão ARM e cenários observados | Confrontar estado antes/depois no mesmo build 366 |

## Contrato para o futuro estado da run

O futuro modelo precisa separar atributos base e efetivos, modificadores de equipamentos/traços/habilidades, inventário e equipamento, estados das três famílias de eventos, epílogos desta aventura e catálogo permanente. Cada registro deve identificar versão/dificuldade, evento+tabela, escolha e resultado observado. Alterações e correções deverão ser reversíveis.

Objetivos de completar histórias, obter itens, preencher catálogo e maximizar pontuação precisam de critérios independentes. Enquanto um caminho depender de comandos desconhecidos, o Atlas deverá apresentar a limitação em vez de selecionar uma melhor escolha sem fundamento. A interface desta etapa apenas consulta regras e conexões; não inicia nem modifica uma run.

## Reproduzir

Na raiz do projeto:

```sh
.venv/bin/python scripts/verify_native_rules.py
.venv/bin/python scripts/audit_rules.py
.venv/bin/python web/life-in-adventure/build_data.py
.venv/bin/python -X utf8 -m unittest discover -s tests -v
python web/life-in-adventure/tests/browser_smoke.py
```

A verificação nativa requer o ELF ARM64 materializado via Git LFS; não aceita um ponteiro LFS ou outro binário. Os dados originais do jogo não são reescritos. As contagens em `atlas-readiness.json` e no bundle são geradas das mesmas fontes; o catálogo passou de 834 para 1.188 registros com os epílogos. Ver `regras-confirmadas.md` para os endereços e `native-rules-evidence.json` para a identidade do binário e a verificação das tabelas de saltos.
