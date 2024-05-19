#language: pt

Funcionalidade: Relizar Login
Como usuário do portal Raro Filmes
Quero poder logar no sistema
Para poder gerir informações e avaliar filmes

Contexto: Logar no sistema
Dado que acessei o site Raro Filmes 
 
Cenário: Deve ser possível cadastrar um usuário com sucesso
Quando eu selecionar a opção login
E incluir um email cadastrado
E incluir a senha correspondente
E avançar selecionando a opção Login
Então deverá efetuar login com sucesso

Cenário: Não deve ser possível logar sem informar um e-mail válido
Então deverá retornar uma mensagem de alerta: "Usuário ou senha inválidos."

Cenário: Não deve ser possível logar sem informar uma senha válida
Então deverá retornar uma mensagem de alerta: "Usuário ou senha inválidos."

Cenário: Não deve ser possível logar sem preencher o e-mail
Então deverá informar uma mensagem de alerta: "Informe o e-mail"


Cenário: Não deve ser possível logar sem preencher uma senha
Então deverá informar uma mensagem de alerta: "Informe a senha"

