#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com o meu tamanho e gosto
E escolher a quantidade 
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página do produto

Cenário: Escolher o produto
Quando eu selecionar o tamanho "XS"
E selecionar cor "Orange"
E selecionar a quantidade "2"
Então deve "inserir no carrinho"

Cenário: Não colocar tamanho
Quando eu selecionar o tamanho ""
E selecionar cor "Orange"
E selecionar a quantidade "2"
Então deve "não inserir no carrinho"

Cenário: Não colocar cor
Quando eu selecionar o tamanho "XS"
E selecionar cor ""
E selecionar a quantidade "2"
Então deve "não inserir no carrinho"

Cenário: Quantidade excedente
Quando eu selecionar o tamanho "XS"
E selecionar cor "Orange"
E selecionar a quantidade "11"
Então deve "não inserir no carrinho"

Cenário: Limpar configuração
Quando eu clicar no botão "limpar"
Então deve "Voltar ao estado original"

Esquema do Cenário: Autenticar multiplos campos
Quando eu selecionar o tamanho <tamanho>
E selecionar cor <cor>
E selecionar a quantidade <quantidade>
Então deve <acaoFim>

Exemplos:
| tamanho | cor      | quantidade | acaoFim                   |
| "XS"    | "Orange" | "2"        | "inserir no carrinho"     |
| ""      | "Orange" | "2"        | "não inserir no carrinho" |
| "XS"    | ""       | "2"        | "não inserir no carrinho" |
| "XS"    | "Orange" | "11"       | "não inserir no carrinho" |
