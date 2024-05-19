#language: pt

Funcionalidade: Gerenciar conta
Como usuário do sistema Raro Filmes
Quero poder gerenciar minha conta
Para consultar e/ou alterar minhas informações

Contexto: Gerenciamento de conta no sistema
Dado que me autentiquei no sistema Raro Filmes 

Cenário: Deve ser possível gerenciar minha conta
Quando eu realizar login
E avançar selecionando a opção Perfil
E selecionar a opção gerenciar conta
Então deve ser possível visualizar a mensagem "Atualize informações da sua conta."

Cenário: Deve ser possível alterar minha senha
Quando eu realizar login
E avançar selecionando a opção Perfil
E selecionar a opção gerenciar conta
E selecionar a opção "Alterar senha"
E informar uma nova senha
E Confirmar senha
E salvar as alterações
Então deverá retornar uma mensagem de sucesso: "Informações atualizadas!"
 
Cenário: Deve ser possível visualizar minhas avaliações
Quando eu realizar login
E avançar selecionando a opção Perfil
Então deverá ser possível verificar a mensagem "Minhas avaliações"  

