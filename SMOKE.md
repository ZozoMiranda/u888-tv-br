# Smoke test — GitHub Pages

Data: 27/11/2026 (BRT). Repositório: `ZozoMiranda/u888-tv-br`, branch `main`, publicação pela raiz.

## Resultado HTTP no endereço do projeto

Requisições sem seguir redirecionamentos a `https://zozomiranda.github.io/u888-tv-br/` e aos caminhos abaixo:

| Caminho | HTTP | `Location` |
| --- | ---: | --- |
| `/` | 301 | `http://u888.tv.br/` |
| `/bonus/` | 301 | `http://u888.tv.br/bonus/` |
| `/como-sacar/` | 301 | `http://u888.tv.br/como-sacar/` |
| `/jogos/` | 301 | `http://u888.tv.br/jogos/` |
| `/robots.txt` | 301 | `http://u888.tv.br/robots.txt` |
| `/sitemap.xml` | 301 | `http://u888.tv.br/sitemap.xml` |
| `/assets/style.css` | 301 | `http://u888.tv.br/assets/style.css` |
| `/assets/logo.svg` | 301 | `http://u888.tv.br/assets/logo.svg` |

O GitHub Pages redireciona o endereço do projeto para o domínio personalizado configurado. Assim, **não foi possível confirmar 200, renderização, CSS e imagem nesse endereço**. O navegador terminou em `https://u888.inf.br/videos/` ao abrir a home do Pages, depois dos redirecionamentos do domínio atual; essa página não é o conteúdo do repositório testado. Os arquivos `robots.txt` e `sitemap.xml` existem na raiz do repositório, mas **não abrem com 200 no endereço do projeto**: respondem 301.

## Inspeção estática do conteúdo versionado

- A home contém `.top-banner` com link “Jogue no U888” e `.btn-fixed-cta` com “Entrar / Cadastrar”; `assets/style.css` define o botão com `position: fixed`.
- Os 27 arquivos HTML referenciam `href="/assets/style.css"` e `src="/assets/logo.svg"`. Esses caminhos começam na raiz do host, portanto ignoram `/u888-tv-br/` se a página for servida como projeto nessa subpasta.
- A inspeção encontrou 472 referências HTML iniciadas por `/` (links internos e assets). Exemplos: `/bonus/`, `/como-sacar/`, `/jogos/` e `/`. Sob o endereço de projeto, esses links levam à raiz de `zozomiranda.github.io`, fora do repositório.
- A imagem social `https://u888.tv.br/assets/og.png` e as URLs canônicas/sitemap apontam diretamente ao domínio personalizado; não validam o endereço com subpasta.

## Pendências de validação

Para obter um teste real de renderização no Pages, é preciso testar a origem publicada em condição que não redirecione ao domínio personalizado, ou validar diretamente o domínio após a migração DNS. No momento deste teste, o DNS público do apex ainda retornava IPs da Cloudflare, e o Pages indicava `www.u888.tv.br` sem configuração e **Enforce HTTPS** indisponível. Nenhum arquivo de site foi corrigido neste teste.

## Atualização após a migração DNS

O DNS público passou a retornar os quatro endereços A `185.199.108.153`, `185.199.109.153`, `185.199.110.153` e `185.199.111.153`, além de `www` como CNAME de `zozomiranda.github.io`. No domínio próprio por **HTTP**, a home, `/bonus/`, `/como-sacar/`, `/jogos/`, `/assets/style.css`, `/assets/logo.svg`, `/robots.txt` e `/sitemap.xml` retornaram 200 com os respectivos tipos de conteúdo. Isso confirma o acesso aos arquivos, mas não equivale a um teste visual da renderização.

Por **HTTPS**, a home e `/sitemap.xml` ainda retornaram 503. O Pages indicava que o certificado do domínio não havia sido emitido e mantinha **Enforce HTTPS** desabilitado. O envio do sitemap HTTPS ao Search Console deve aguardar a resposta 200 nesse protocolo.

## Validação final

Após a emissão do certificado, a configuração do Pages mostrou **DNS check successful** e **Enforce HTTPS** marcado. Nova requisição pública retornou 200 em HTTPS para a home e `https://u888.tv.br/sitemap.xml`. O sitemap foi enviado à propriedade de domínio `u888.tv.br` no Search Console da conta Zoe Miranda: status **Success**, com 27 páginas descobertas. O teste no endereço `/u888-tv-br/` continua condicionado ao redirecionamento 301 do GitHub para o domínio personalizado.
