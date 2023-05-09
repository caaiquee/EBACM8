#language pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Para finalizar minha compra

Contexto:
Dado que eu acesse a página de checkout

Esquema do Cenário: Validação dos campos
Quando eu preencho <campo>
Então deve mostrar uma <mensagemFinal>

Exemplos:
| campo                                        | mensagemFinal       |
| "preencho campos obrigatórios"               | "Finalizar compra"  |
| "deixo de preencher algum campo obrigatório" | "mensagem de aviso" |