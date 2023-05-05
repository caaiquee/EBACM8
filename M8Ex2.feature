#language pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer meu login (autenticação) na plataformaPara visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Fazer login
Quando eu insiro "caique@gmail.com"
E senha "1234"
Então deve "ser direcionado para tela de checkout"

Cenário: Usuário inválido
Quando eu insito "abc@gmail.com"
E senha "1"
Então deve exibir uma mensagem "Usuário ou senha inválidos"

Esquema do Cenário: login
Quando eu insiro <usuario>
E senha <senha>
Então deve exibir uma mensagem <mensagemLogin>

Exemplos:
| usuario            | senha  | mensagemLogin                           |
| "caique@gmail.com" | "1234" | "ser direcionado para tela de checkout" |
| "abc@gmail.com"    | "1"    | "Usuário ou senha inválidos"            |