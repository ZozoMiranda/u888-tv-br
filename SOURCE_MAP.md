# SOURCE_MAP.md — Diagnóstico Forense de Fontes e Conteúdo

**Data:** 27 de Novembro de 2026
**Objetivo:** Identificar se existe espelho estático de cassino no disco ou se a rota depende de captura externa / entrega de artefato de terceiros.
**Regra de Execução:** Nenhuma cópia ou alteração realizada no repositório.

---
## 1. Pastas em `u888-network/dist/`

| Pasta | Nº de `.html` | Primeiros 3 `<title>` |
| :--- | :---: | :--- |
| **`u888.agr.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.art.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.clube.com.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.eco.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.etc.br`** | 22 | • <code>agro/index.html</code>: Agro e banca: safra, ciclo e 3 reais por giro<br>• <code>aposte-3-reais/index.html</code>: Aposte com R$ 3 e saque no Pix — comece hoje<br>• <code>cashback/index.html</code>: Cashback: receba de volta parte do que jogou |
| **`u888.far.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.imb.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.ind.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.inf.br`** | 5 | • <code>cobertura-midiatica/index.html</code>: Cobertura esportiva: informação antes de odd<br>• <code>estatisticas-futebol/index.html</code>: Estatística que serve pra apostar melhor<br>• <code>index.html</code>: Esporte, transmissão e aposta com R$ 3 — U888 |
| **`u888.tur.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.tv.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888.vet.br`** | 0 | *(nenhum arquivo `.html`)* |
| **`u888clube.com.br`** | 6 | • <code>cashback/index.html</code>: Cashback: receba de volta parte do que jogou<br>• <code>estrutura-do-clube/index.html</code>: Clube U888: cashback, faixa e saque maior<br>• <code>faq-vip/index.html</code>: Clube U888: perguntas diretas |
| **`u888online.com.br`** | 0 | *(nenhum arquivo `.html`)* |

> **Diagnóstico da seção 1:**
> - Apenas 3 pastas em `dist/` contêm HTML: `u888.etc.br` (22), `u888.inf.br` (5) e `u888clube.com.br` (6).
> - Todas as outras 11 pastas são stubs de redirecionamento HTTP 301 (`_redirects`).
> - O conteúdo de `u888.etc.br` consiste em verticais de doorway PBN satélite (agro, eco, farmácia, imóveis, indústria, veterinária) acopladas a portas cloaked de conversão comercial.

---
## 2. Grep por Termos Comerciais (`cassino`, `aposta`, `slots`, `bet`, `R$`)

### A. Em `u888-network/dist/` (Total de ocorrências: 33)

| Arquivo | Linha | Termos Encontrados | Trecho |
| :--- | :---: | :---: | :--- |
| `u888.etc.br/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/agro/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/aposte-3-reais/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/cashback/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/cassino-ao-vivo/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/cenario-juridico/index.html` | 1 | cassino, aposta, slots, bet, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/como-sacar/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/crash/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/cultura/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/eco/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/esportes/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/estrutura-do-clube/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/faq/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/farmacia/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/fidelidade/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/imoveis/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/indique-e-ganhe/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/industria/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/pagamentos/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/roleta/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/slots/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.etc.br/veterinaria/index.html` | 1 | cassino, aposta, slots, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.inf.br/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.inf.br/cobertura-midiatica/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.inf.br/estatisticas-futebol/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.inf.br/turismo/index.html` | 1 | cassino, aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888.inf.br/videos/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888clube.com.br/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888clube.com.br/cashback/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888clube.com.br/estrutura-do-clube/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888clube.com.br/faq-vip/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888clube.com.br/fidelidade/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |
| `u888clube.com.br/indique-e-ganhe/index.html` | 1 | aposta, R$ | `<!doctype html><html lang="pt-BR"><head><meta charset="utf-8"><meta name="viewport" content="width=d` |

### B. Em `u888b` (Total de ocorrências: 402)

| Arquivo | Linha | Termos Encontrados | Trecho |
| :--- | :---: | :---: | :--- |
| `index.html` | 7 | aposta | `<meta name="description" content="Portal oficial informativo da U888 no Brasil. Guias completos de b` |
| `index.html` | 11 | aposta | `<meta property="og:description" content="Portal oficial informativo da U888 no Brasil. Guias complet` |
| `index.html` | 64 | aposta | `<strong>Aviso Informativo aos Visitantes:</strong> Este é um portal informativo sobre a U888, mantid` |
| `index.html` | 85 | slots | `<p>Explore centenas de caça-níqueis modernos, slots com compra de bônus, jogos de explosão em tempo ` |
| `index.html` | 95 | aposta | `<p>Ferramentas de moderação de tempo de sessão, limites diários de apostas e diretrizes rigorosas pa` |
| `index.html` | 102 | aposta | `<p>A U888 consolidou sua presença no cenário de entretenimento digital global ao oferecer uma infrae` |
| `index.html` | 111 | cassino, slots | `<h2>Diversidade de Entretenimento: Slots, Crash Games e Cassino ao Vivo</h2>` |
| `index.html` | 112 | slots | `<p>A biblioteca disponível na plataforma internacional em <a href="https://u888.com" target="_blank"` |
| `index.html` | 114 | cassino, aposta | `<p>Para quem busca dinamismo acelerado e tomada de decisão estratégica em tempo real, os jogos de co` |
| `index.html` | 122 | aposta | `<p>A utilização eficiente dos bônus oferecidos pela U888 depende da compreensão precisa de seus requ` |
| `index.html` | 124 | aposta | `<p>Recomendamos a todos os participantes o planejamento cuidadoso de sua banca: estabeleça um orçame` |
| `index.html` | 129 | aposta | `<h4>1. O portal u888b.com.br realiza apostas ou recebe pagamentos?</h4>` |
| `index.html` | 140 | aposta | `<p>A U888 pratica limites acessíveis para atender aos apostadores brasileiros. Os valores exatos de ` |
| `index.html` | 145 | aposta | `<p>É terminantemente proibido o registro e a prática de apostas para menores de 18 anos completos. A` |
| `index.html` | 151 | cassino | `<li><a href="/cassino-online/">Cassino online</a></li>` |
| `index.html` | 152 | aposta | `<li><a href="/aposta-esportiva/">Aposta esportiva</a></li>` |
| `index.html` | 154 | cassino | `<li><a href="/pix-cassino/">Cassino com PIX</a></li>` |
| `index.html` | 156 | slots | `<li><a href="/slots/">Slots</a></li>` |
| `index.html` | 182 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `aposta-esportiva/index.html` | 6 | aposta | `<title>Aposta Esportiva Brasil — Cotações de Futebol e Ligas na U888</title>` |
| `aposta-esportiva/index.html` | 7 | aposta | `<meta name="description" content="A emoção das apostas esportivas ganha um novo patamar para os torc` |
| `aposta-esportiva/index.html` | 8 | aposta | `<link rel="canonical" href="https://u888b.com.br/aposta-esportiva/">` |
| `aposta-esportiva/index.html` | 10 | aposta | `<meta property="og:title" content="Aposta Esportiva Brasil — Cotações de Futebol e Ligas na U888">` |
| `aposta-esportiva/index.html` | 11 | aposta | `<meta property="og:description" content="A emoção das apostas esportivas ganha um novo patamar para ` |
| `aposta-esportiva/index.html` | 12 | aposta | `<meta property="og:url" content="https://u888b.com.br/aposta-esportiva/">` |
| `aposta-esportiva/index.html` | 41 | aposta | `<a href="https://u888.com?utm_source=portal&utm_medium=doorway&utm_campaign=aposta_esportiva" target` |
| `aposta-esportiva/index.html` | 48 | aposta | `<h1>Aposta Esportiva Brasil</h1>` |
| `aposta-esportiva/index.html` | 49 | aposta | `<p>A emoção das apostas esportivas ganha um novo patamar para os torcedores brasileiros que acompanh` |
| `aposta-esportiva/index.html` | 52 | aposta | `<strong>Aviso Institucional:</strong> Este artigo é veiculado pelo portal oficial informativo U888 B` |
| `aposta-esportiva/index.html` | 61 | aposta | `<p>O fluxo de liquidação via sistema PIX simplifica a vida do apostador, eliminando intermediários s` |
| `aposta-esportiva/index.html` | 64 | aposta | `<p>A mobilidade é outro ponto de destaque amplamente elogiado pela comunidade brasileira. Seja atrav` |
| `aposta-esportiva/index.html` | 67 | aposta | `<h2>Gestão Inteligente de Saldo em Apostas</h2>` |
| `aposta-esportiva/index.html` | 68 | aposta | `<p>Por fim, a U888 reforça categoricamente seu compromisso ético com o jogo justo e responsável. A a` |
| `aposta-esportiva/index.html` | 69 | aposta | `<p>Para vivenciar essa experiência completa de entretenimento com total segurança e suporte em portu` |
| `aposta-esportiva/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `app-u888/index.html` | 52 | aposta | `<strong>Aviso Institucional:</strong> Este artigo é veiculado pelo portal oficial informativo U888 B` |
| `app-u888/index.html` | 61 | aposta | `<p>O fluxo de liquidação via sistema PIX simplifica a vida do apostador, eliminando intermediários s` |
| `app-u888/index.html` | 64 | aposta | `<p>A mobilidade é outro ponto de destaque amplamente elogiado pela comunidade brasileira. Seja atrav` |
| `app-u888/index.html` | 68 | aposta | `<p>Por fim, a U888 reforça categoricamente seu compromisso ético com o jogo justo e responsável. A a` |
| `app-u888/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `autores/beatriz-lima/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `autores/camila-santos/index.html` | 7 | cassino | `<meta name="description" content="Conheça o perfil profissional de Camila Santos, Analista Sênior de` |
| `autores/camila-santos/index.html` | 11 | cassino | `<meta property="og:description" content="Conheça o perfil profissional de Camila Santos, Analista Sê` |
| `autores/camila-santos/index.html` | 54 | cassino | `<p><strong>Cargo / Especialidade:</strong> Analista Sênior de Jogos de Cassino & Algoritmos RNG</p>` |
| `autores/camila-santos/index.html` | 55 | cassino, slots | `<p><strong>Foco Editorial:</strong> U888 Cassino & Slots (u888online.com.br)</p>` |
| `autores/camila-santos/index.html` | 58 | slots | `<p>Graduada em Estatística com especialização em probabilidade e matemática de jogos de azar. Possui` |
| `autores/camila-santos/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `autores/marcos-rocha/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `autores/rafael-silva/index.html` | 58 | aposta | `<p>Jornalista especializado em análise de mercado esportivo e modelagem estatística de cotações para` |
| `autores/rafael-silva/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `blackjack/index.html` | 7 | cassino | `<meta name="description" content="O jogo do 21 destaca-se como uma das modalidades de cassino onde a` |
| `blackjack/index.html` | 11 | cassino | `<meta property="og:description" content="O jogo do 21 destaca-se como uma das modalidades de cassino` |
| `blackjack/index.html` | 49 | cassino | `<p>O jogo do 21 destaca-se como uma das modalidades de cassino onde a habilidade estratégica e a tom` |
| `blackjack/index.html` | 52 | aposta | `<strong>Aviso Institucional:</strong> Este artigo é veiculado pelo portal oficial informativo U888 B` |
| `blackjack/index.html` | 61 | aposta | `<p>O fluxo de liquidação via sistema PIX simplifica a vida do apostador, eliminando intermediários s` |
| `blackjack/index.html` | 64 | aposta | `<p>A mobilidade é outro ponto de destaque amplamente elogiado pela comunidade brasileira. Seja atrav` |
| `blackjack/index.html` | 68 | aposta | `<p>Por fim, a U888 reforça categoricamente seu compromisso ético com o jogo justo e responsável. A a` |
| `blackjack/index.html` | 89 | aposta, bet | `<p>A U888 atua como operador internacional. A regulamentação brasileira de apostas (Lei 14.790/2023)` |
| `bonus/index.html` | 6 | R$ | `<title>Bônus U888: 100% até R$ 1.000, Regras de Rollover e Como Ativar</title>` |
| `bonus/index.html` | 7 | R$ | `<meta name="description" content="Guia completo e auditado do bônus U888: fórmula de cálculo do roll` |

*... e mais 342 ocorrências em `u888b`.*

---
## 3. Diagnóstico Detalhado do Diretório `u888b`

- **Total de páginas `.html`:** **28 páginas**.
- **Remote Git Configurado:** **Nenhum remote configurado** (`git remote -v` vazio). Branch local: `night/block2`.
- **Avaliação de Conteúdo de Cassino:**
  - **`u888b` NÃO é o site do cassino real (`u888.com`).**
  - `u888b` é um **portal editorial informativo satélite** (focado no domínio `u888b.com.br`), gerado para fins de SEO (artigos de bônus, guias de depósito via Pix, regras de roleta, blackjack, slots, perfis de autores).
  - O diretório contém uma captura bruta em `u888b/data/raw/root.html` da raiz de `https://u888.com/` (9.299 bytes), que confirma que a home de `u888.com` é uma casca estática SPA carregando scripts de cloak/verificação (`check.js`, `lang.js`, `verify.js`).

---
## 4. Conclusão e Próximos Passos (Decisão)

1. **Inexistência de Espelho de Cassino no Disco Local:**
   - Nenhum dos diretórios locais (`u888-network/dist` ou `u888b`) contém o espelho real do frontend do cassino.
   - `u888-network/dist` contém doorways temáticos de portal.
   - `u888b` contém artigos editoriais em formato de blog informativo.
2. **Inviabilidade de Captura Direta via `wget`:**
   - O site oficial `https://u888.com/` opera como Single Page Application (SPA) renderizada via JavaScript cliente.
   - Uma captura estática via `wget` ou `curl` resulta apenas em um casulo HTML vazio de 9 KB com scripts de verificação.
3. **Ação Recomendada:**
   - **Manter o repositório `u888-tv-br` aguardando o pacote de espelho estático autêntico** fornecido pelo cliente/colega, ou
   - Definir se a intenção para `u888.tv.br` é servir as páginas informativas de cassino de `u888b` (28 páginas reais sobre cassino/slots/Pix) ou a casca SPA oficial.