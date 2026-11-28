# Auditoria on-page e de links internos

Escopo: 27 arquivos `index.html` do repositório `ZozoMiranda/u888-tv-br`. Critérios solicitados: title com até 60 caracteres e contendo `U888`; meta description com 140–155 caracteres; um H1 por página; pelo menos um link interno de entrada de outra página e dois destinos internos de saída. Links para `u888.com` foram tratados como externos. O grafo considera destinos entre as 27 páginas do repositório e ignora fragmentos, links para si mesma e repetições para o mesmo destino.

## Achados antes das correções

### 1. Titles

Não havia títulos repetidos nem sem `U888`. Dez excediam 60 caracteres:

| Página | Caracteres antes | Situação após ajuste |
| --- | ---: | ---: |
| `/aposta-esportiva/` | 61 | 49 |
| `/bonus/` | 63 | 53 |
| `/como-depositar/` | 63 | 48 |
| `/como-sacar/` | 66 | 50 |
| `/esportes/` | 66 | 55 |
| `/jogos/` | 70 | 49 |
| `/limites/` | 63 | 44 |
| `/metodologia/` | 61 | 47 |
| `/prazos-de-saque/` | 74 | 46 |
| `/taxas/` | 68 | 41 |

### 2. Meta descriptions

Nenhuma estava ausente ou repetida. Nove estavam fora de 140–155 caracteres:

| Página | Caracteres antes | Caracteres após ajuste |
| --- | ---: | ---: |
| `/autores/beatriz-lima/` | 133 | 149 |
| `/autores/camila-santos/` | 131 | 147 |
| `/autores/marcos-rocha/` | 128 | 144 |
| `/autores/rafael-silva/` | 128 | 144 |
| `/bonus/` | 133 | 144 |
| `/` | 136 | 147 |
| `/metodologia/` | 125 | 149 |
| `/sobre/` | 158 | 150 |
| `/termos/` | 173 | 146 |

### 3. H1

Todas as 27 páginas têm exatamente um H1. Nenhuma correção necessária.

### 4. Links internos

Nenhuma página órfã: todas recebem pelo menos um link de outra página do conjunto. Todas têm ao menos oito destinos internos distintos de saída; nenhuma ficou abaixo de dois. Nenhuma correção necessária. Por não haver achado neste item, não foi criado um commit vazio `fix: linking interno`.

### 5. Banner e botão fixo

Confirmados **sem exceção nas 27 páginas**: cada arquivo tem um `.top-banner` com link `https://u888.com/` e um `.btn-fixed-cta` com link `https://u888.com/`. O CSS da classe do botão usa `position: fixed`. Nenhuma página ficou sem esses CTAs.

## Verificação após a correção

Os dez titles e as nove descriptions acima foram ajustados no commit `fix: title/description`. As tags Open Graph correspondentes foram mantidas iguais às tags principais. Nova auditoria: zero titles repetidos, longos ou sem `U888`; zero descriptions ausentes, repetidas ou fora da faixa; zero H1 inválidos, páginas órfãs, páginas com menos de dois destinos internos ou CTAs ausentes. Em todos os 17 arquivos alterados, somente as linhas de metadados no `<head>` mudaram; o conteúdo após `</head>` permaneceu byte a byte igual.

Os caminhos absolutos de assets e links internos foram mantidos porque o destino de publicação é a raiz de `u888.tv.br`.
