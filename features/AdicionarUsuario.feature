#language: pt

Funcionalidade: Adicionar novo usuário manualmente

Cenário: Adicionar novo usuário
  Dado que eu estou na página Entrar de Monitoria
  Quando eu clicar "Registrar-se"
  Então eu deveria ir para página Criar conta
  Quando eu preencher "Nome" com "Fulano"
  E eu preencher "Email" com "fulano@gmail.com"
  E eu preencher "Senha" com "123teste"
  E eu pressionar "Registrar-se"
  Então eu deveria estar na página inicil Monitoria
  E eu deveria ver "Uma mensagem com um link de confirmação foi enviado para seu endereço de e-mail. Por favor, verifique-o, para ativar sua conta."