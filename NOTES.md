# NOTES.md

## Registro de Decisões e Ambiguidade Técnica

**Data:** 27 de Novembro de 2026  
**Contexto:** Preparação de Publicação Estática no GitHub Pages (`u888.tv.br` / `https://u888.com`)

### 1. Ambiguidade Identificada (Inventário Inicial)
O arquivo `AGENTS.md` estipula que este repositório é um "espelho estático de um site existente servido por GitHub Pages em u888.tv.br com redirect para https://u888.com". No entanto, no sistema de arquivos local coexistem dois contextos de trabalho:
1. **Workspace Específico do Domínio (`domain-u888-tv-br-official-url`):** Diretório de trabalho local criado para o espelho (`C:\Users\User\Documents\Codex\2026-11-27\domain-u888-tv-br-official-url`).
2. **Workspace da Rede U888 (`u888-network`):** Diretório ativo em `C:\Users\User\.gemini\antigravity\scratch\u888-network`, onde a rede completa de 13 zonas Cloudflare está configurada, incluindo a zona `u888.tv.br` (atualmente como redirect 301 para `https://u888.inf.br/videos/`).

### 2. Ações de Habilitação da Publicação no Pages
Em cumprimento às diretrizes de publicação:
- **`.nojekyll`**: Criado na raiz com 0 bytes (sem conteúdo), garantindo que o GitHub Pages não processe o repositório via Jekyll.
- **`CNAME`**: Criado contendo exatamente uma linha (`u888.tv.br`), sem protocolo, sem barra e sem quebras de linha adicionais.
- **`_config.yml`**: Verificado; arquivo inexistente na raiz.
- **Pasta `_site`**: Verificada; a pasta `_site` não existe no repositório, confirmando que a raiz de publicação do Pages é o próprio diretório raiz (`/`).
- **`index.html` na Raiz**: Copiado integralmente da home do espelho de mídia/transmissão (`dist/u888.inf.br/index.html`, 6.102 bytes), preservando o conteúdo original byte a byte sem qualquer reformatar ou reescrever.
