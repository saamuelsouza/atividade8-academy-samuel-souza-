#language: pt

Funcionalidade: Atualizar usuário
Como visitante do portal Raro Filmes
Quero poder me cadastrar no sistema
Para poder realizar avaliações em filmes

Contexto: Efetuar cadastro de usuários
Dado que acessei o sistema Raro Filmes 
 
Cenário: Deve ser possível cadastrar um usuário com sucesso
Quando eu selecionar a opção registre-se
E incluir um novo nome 
E incluir um novo email
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem: "Cadastro realizado!"

Cenário: Não deve ser possível cadastrar um usuário com um nome vazio
Quando eu selecionar a opção registre-se
E deixar o campo de nome vazio
E incluir um novo email
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Informe o nome"

Cenário: Deve ser possível cadastrar um usuário com nome de 101 caracteres
Quando eu selecionar a opção registre-se
E incluir um novo nome de 101 caracteres 
E incluir um novo email
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem: "Cadastro realizado!"

Cenário: Não deve ser possível cadastrar um usuário com um email vazio
Quando eu selecionar a opção registre-se
E incluir um novo nome
E deixar o campo de email vazio
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Informe o E-mail"

Cenário: Não deve ser possível cadastrar um usuário sem uma senha válida
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email
E deixar o campo senha vazio
E inserir uma senha em confirmar senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Campo obrigatório"

Cenário: Não deve ser possível cadastrar um usuário sem preencher o campo confirmar senha
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email
E incluir uma nova senha
E deixar o campo  confirmar senha vazio
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "As senhas devem ser iguais."

Cenário: Não deve ser possível cadastrar um usuário com email já utilizado por outro usuário
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um email já utilizado por outro usuário
E incluir uma nova senha
E deixar o campo  confirmar senha vazio
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "E-mail já cadastrado. Utilize outro e-mail"

Cenário: Não deve ser possível cadastrar um usuário sem o @ no email
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email faltando o "@"
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Não foi possível cadastrar o usuário"

Cenário: Não deve ser possível cadastrar usuário sem um "ponto" no email
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email faltando o "ponto"
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Não foi possível cadastrar o usuário"

Cenário: Não deve ser possível cadastrar usuário com menos de 2 letras após o "ponto" no email
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email com menos de 2 caracteres após o "ponto"
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Não foi possível cadastrar o usuário"

Cenário: Não deve ser possível cadastrar usuário quando o email possuir menos de 6 caracteres
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email com menos de 6 caracteres
E incluir uma nova senha
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "Não foi possível cadastrar o usuário"

Cenário: Não deve ser possível cadastrar um usuário quando a senha for menor que 6 caracteres
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email
E incluir uma nova senha com menos de 6 caracteres
E confirmar essa nova senha
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "A senha deve ter pelo menos 6 dígitos"

Cenário: Não deve ser possível cadastrar um usuário quando a senha de confirmação for diferente da senha inicial
Quando eu selecionar a opção registre-se
E incluir um novo nome
E incluir um novo email
E incluir uma nova senha
E inserir em confirmar nova senha uma senha diferente
E salvar as alterações selecionando a opção cadastrar
Então deverá retornar uma mensagem de alerta: "As senhas devem ser iguais."

Cenário: Usuário deve ser criado com o tipo 0, que é o tipo de usuário comum
Quando cadastrar um novo usuário
E realizar o login
E selecionar a opção Perfil
E avançar com a opção gerenciar conta
Então deve ser possível verificar que o usuário foi criado como "Comum"