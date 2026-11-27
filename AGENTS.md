# AGENTS.md

## O que é este repositório
Espelho estático de um site existente. Os arquivos HTML/CSS/JS foram capturados
do site original e são servidos por GitHub Pages em um domínio próprio
(u888.tv.br), com redirect para o domínio principal (https://u888.com).

## Regras gerais
- Não reformatar HTML, CSS ou JS. Preserve o arquivo como está, byte a byte,
  exceto nas tags explicitamente pedidas.
- Não traduzir conteúdo. O conteúdo é em pt-BR e fica em pt-BR.
- Não instalar dependências. Use Node puro, sed, grep ou Python da stdlib.
- Não renomear arquivos nem reorganizar pastas. Caminhos são contrato.
- Commits pequenos e descritivos, um por tarefa.
- Se algo estiver ambíguo, escolha a opção mais conservadora e registre em
  `NOTES.md` em vez de perguntar e parar.
- Nunca apagar arquivo de conteúdo sem listar antes o que será apagado.

## Contexto de deploy
- Branch de publicação: main, diretório raiz.
- O site é servido em domínio próprio configurado em CNAME + Settings → Pages.
- HTTPS é obrigatório; nada de asset em http.
