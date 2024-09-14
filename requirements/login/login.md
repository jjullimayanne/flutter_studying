## Feature: Login de Usuário

  Como um usuário registrado
  Eu quero fazer login no sistema
  Para que eu possa acessar minhas informações e funcionalidades restritas

  Scenario: Login bem-sucedido com credenciais válidas
    Dado que o usuário está na página de login
    E o usuário tem um nome de usuário "usuario_teste" e uma senha "senha_segura"
    Quando o usuário insere "usuario_teste" como nome de usuário
    E o usuário insere "senha_segura" como senha
    E o usuário clica no botão de login
    Então o usuário deve ser redirecionado para a página inicial do sistema
    E o usuário deve ver uma mensagem de boas-vindas

  Scenario: Login falhado com credenciais inválidas
    Dado que o usuário está na página de login
    E o usuário tem um nome de usuário "usuario_teste" e uma senha "senha_segura"
    Quando o usuário insere "usuario_teste" como nome de usuário
    E o usuário insere "senha_errada" como senha
    E o usuário clica no botão de login
    Então o usuário deve ver uma mensagem de erro informando que as credenciais são inválidas

  Scenario: Login falhado com nome de usuário incorreto
    Dado que o usuário está na página de login
    E o usuário tem um nome de usuário "usuario_teste" e uma senha "senha_segura"
    Quando o usuário insere "usuario_incorreto" como nome de usuário
    E o usuário insere "senha_segura" como senha
    E o usuário clica no botão de login
    Então o usuário deve ver uma mensagem de erro informando que as credenciais são inválidas

  Scenario: Login falhado com senha incorreta
    Dado que o usuário está na página de login
    E o usuário tem um nome de usuário "usuario_teste" e uma senha "senha_segura"
    Quando o usuário insere "usuario_teste" como nome de usuário
    E o usuário insere "senha_errada" como senha
    E o usuário clica no botão de login
    Então o usuário deve ver uma mensagem de erro informando que as credenciais são inválidas

  Scenario: Login sem preenchimento dos campos
    Dado que o usuário está na página de login
    Quando o usuário deixa o campo de nome de usuário vazio
    E o usuário deixa o campo de senha vazio
    E o usuário clica no botão de login
    Então o usuário deve ver uma mensagem de erro informando que todos os campos são obrigatórios
