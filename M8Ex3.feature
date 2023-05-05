#language pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Para finalizar minha compra

Contexto:
Dado que eu acesse a página de checkout

Cenário: Preencher campos obrigatórios
Quando eu preencho Nome "Martinho"
E sobrenome "Vila"
E Pais "Brasil"
E Endereço "Rua dos bobos"
E cidade "Osasco"
E CEP "123456"
E telefone "119999-99999"
E email "caique@gmail.com"
Então deve ser possível "Finalizar compra"

Cenário: email inválido
Quando eu preencho Nome "Martinho"
E sobrenome "Vila"
E Pais "Brasil"
E Endereço "Rua dos bobos"
E cidade "Osasco"
E CEP "123456"
E telefone "119999-99999"
E email "caiquegmail.com"
Então deve mostrar uma "mensagem de erro"

Cenário: Campos obrigatórios vazios
Quando eu preencho nome ""
E sobrenome ""
E Pais "Brasil"
E endereço "Rua dos bobos"
E cidade "Osasco"
E CEP "123456"
E telefone "119999-99999"
E email "caique@gmail.com"
Então deve mostrar uma "mensagem de aviso"

Esquema do Cenário: Validação dos campos
Quando eu preencho nome <nome>
E sobrenome <sobrenome>
E Pais <pais>
E endereço <endereco>
E cidade <cidade>
E CEP <cep>
E telefone <telefone>
E email <email>
Então deve mostrar uma <mensagemFinal>

Exemplos:
| nome       | sobrenome | pais     | endereco        | cidade   | cep      | telefone       | email              | mensagemFinal       |
| "Martinho" | "Vila"    | "Brasil" | "Rua dos bobos" | "Osasco" | "123456" | "119999-99999" | "caique@gmail.com" | "Finalizar compra"  |
| "Martinho" | "Vila"    | "Brasil" | "Rua dos bobos" | "Osasco" | "123456" | "119999-99999" | "caiquegmail.com"  | "mensagem de erro"  |
| ""         | ""        | "Brasil" | "Rua dos bobos" | "Osasco" | "123456" | "119999-99999" | "caique@gmail.com" | "mensagem de aviso" |