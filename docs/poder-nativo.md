# Poder nativo e pontuação

`native-power.js` reproduz os componentes confirmados de `Equipment.GetTotalBattlePoint` da versão 1.2.47, build 366. Esse número é diferente do índice experimental da calculadora de combate. A pontuação moderna usa o poder nativo na categoria 16, junto da soma dos seis atributos; substituir esse componente pelo índice experimental daria uma pontuação incorreta.

Fonte: `extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so`, SHA-256 `0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25`. Os nomes/endereços vêm do `script.json` e `dump.cs` extraídos do mesmo build. A investigação é estática; não é uma comparação com uma run executada no celular.

## Fórmula confirmada

`Equipment.GetTotalBattlePoint` (`0x1a1ceb8`) reúne os helpers de dano, dano adicional, velocidade, crítico, defesa, esquiva e habilidades. O bloco final (`0x1a1fb34` a `0x1a1fc68`) calcula, usando precisão float32 por operação:

`max(0, (0,5 × velocidade × dano crítico esperado × defesa ponderada / (1 − esquiva) − 1500) × fator de habilidades × 40 / 300 × 0,7)`.

A defesa ponderada usa dez componentes de resistência. Os componentes 0 e 1 recebem peso 5/12 cada; os outros oito recebem 1/48 cada. Cada reserva de defesa é dividida pela resistência correspondente com denominador mínimo 0,2. O fator aditivo reúne os ajustes de habilidades presentes na função nativa. A habilidade 86 acrescenta um fator de precisão 0,75.

Os helpers confirmados incluem `GetMainhandDmg` (`0x1a24558`), `GetAdditionalDmg` (`0x1a24938`), `GetDmgAbilities` (`0x1a275e0`), `GetHpAbilities` (`0x1a27ffc`), `GetAttackSpeedForItem` (`0x1a25234`), `GetTotalCriticalChanceForItem` (`0x1a25734`), `GetTotalCriticalRateForItem` (`0x1a25b44`) e `GetTotalDodgeChanceForItem` (`0x1a26ea8`).

Dois detalhes necessários para reproduzir o código:

- A maestria e o dano adicional consultam `Item.dmgType` (offset `0x68`), e não o campo `attackType`. Esses campos diferem em itens reais, como o item #20. `ItemDataBase.Awake` (`0x1a40fc0`) carrega o JSON diretamente; um `dmgType` omitido tem o valor inteiro padrão zero.
- `GetAdditionalDmg` recebe o dano da mão já modificado pelas maestrias. `GetHpAbilities` aplica a Dureza negativa também: a penalidade por Constituição abaixo de quatro reduz a defesa, em vez de desaparecer.

## Certeza e observações

`estimate` devolve `ready`, `value`, `exact`, `partial`, `missing`, `notes` e os componentes utilizados. Só uma observação válida ou uma configuração inteiramente coberta pode ser apresentada como exata para a fórmula modelada.

Ainda ficam parciais as famílias especiais 68, 69, 73, 83, 92, 94, 95, 99, 100, 103 e 104, a combinação de duas armas, habilidades relevantes desconhecidas, presença de certas habilidades em nível zero e modificadores externos do modo difícil. A falta de atributos, grau ou equipamento confirmado impede o cálculo. Efeitos pendentes da run não viram habilidades ausentes por conveniência.

`observe(value, input)` registra um poder observado com uma assinatura da ficha. Mudanças de atributos, alinhamento, grau, equipamento, traços ou habilidades invalidam essa observação. Ouro isolado não muda o poder. A interface de pontuação mantém sua própria âncora conservadora, incluindo a EXP, para evitar reutilizar um poder observado depois de uma possível progressão de grau.

## Validação

`native-power.test.cjs` contém fixtures numéricas do bloco final float32, matrizes de resistência com níveis positivos e negativos, um conjunto real de Adaga/Armadura Acolchoada, distinção entre `dmgType` e `attackType`, dano adicional após maestrias, Dureza negativa, dados ausentes, efeitos parciais e invalidação de observações. A suíte percorre todos os equipamentos extraídos e exige resultados finitos e não negativos, com limites identificados.

Na auditoria, a matriz de resistências foi confrontada com a execução isolada das instruções ARM do trecho `0x1a1d530` a `0x1a1e500`: 114 IDs de habilidade nos níveis 1, 4, −1 e −4, concordando a seis casas decimais. Isso valida esse bloco específico; não transforma helpers especiais ainda ausentes em cobertura completa.
