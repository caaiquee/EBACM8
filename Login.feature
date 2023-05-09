#language pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer meu login (autenticação) na plataformaPara visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Esquema do Cenário: login
Quando eu insiro <usuario>, <senha>
Então deve exibir uma mensagem <mensagemLogin>

Exemplos:
| usuario            | senha  | mensagemLogin                           |
| "caique@gmail.com" | "1234" | "ser direcionado para tela de checkout" |
| "abc@gmail.com"    | "1"    | "Usuário ou senha inválidos"            |