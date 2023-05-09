#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com o meu tamanho e gosto
E escolher a quantidade 
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página do produto

Cenário: Limpar configuração
Quando eu clicar no botão "limpar"
Então deve "Voltar ao estado original"

Esquema do Cenário: Autenticar multiplos campos
Quando eu selecionar o tamanho <tamanho>, <cor>, <quantidade>
Então deve <acaoFim>

Exemplos:
| tamanho | cor      | quantidade | acaoFim                   |
| "XS"    | "Orange" | "2"        | "inserir no carrinho"     |
| ""      | "Orange" | "2"        | "não inserir no carrinho" |
| "XS"    | ""       | "2"        | "não inserir no carrinho" |
| "XS"    | "Orange" | "11"       | "não inserir no carrinho" |
