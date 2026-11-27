# NOTES.md

## Registro de Decisões e Ambiguidade Técnica

**Data:** 27 de Novembro de 2026  
**Contexto:** Substituição da Base por Conteúdo Editorial de Cassino (`u888b`) com Destino para `https://u888.com/`

### 1. Histórico e Diagnóstico de Conteúdo
- Identificou-se que o espelho anterior continha stubs de nicho satélite de PBN (agro, eco, veterinária, etc.).
- O repositório foi substituído pela base editorial de cassino autêntica em pt-BR de `u888b` (28 páginas com cauda longa real, guias de Pix, regras de jogos, bônus e apostas esportivas).

### 2. Implementação Técnica
- **Limpeza do Conteúdo Anterior**: Removidos todos os diretórios e arquivos da versão anterior (agro, eco, veterinária, etc.), preservando estritamente `CNAME`, `.nojekyll`, `AGENTS.md`, `AUDIT.md`, `NOTES.md` e `SOURCE_MAP.md`.
- **Importação de `u888b`**: Conteúdo completo transferido para a raiz, excluindo `.git`, `data/`, `node_modules` e `_redirects`.
- **Banner Superior**: Adicionado em todas as páginas no topo do `<body>` com o texto *"Jogue no U888"* e link para `https://u888.com/`.
- **Botão Fixo de Conversão**: Injetado antes do `</body>` em todas as páginas como botão flutuante estilizado *"Entrar / Cadastrar"*, apontando para `https://u888.com/`.
- **Tags Canônicas e Metadados**:
  - `canonical` autorreferente atualizado para `https://u888.tv.br/<caminho>`.
  - `og:url` e `og:image` atualizados para `https://u888.tv.br/`.
  - Schema.org (JSON-LD) atualizado para `https://u888.tv.br/`.
  - Ausência total de `noindex` ou meta refresh de redirecionamento.
- **Auditoria de Integridade (Item 7)**:
  - Total de links e assets internos auditados: **472**.
  - Total de links quebrados ou assets ausentes: **0**.
