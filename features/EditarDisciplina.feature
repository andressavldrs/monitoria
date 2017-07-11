#language: pt

Funcionalidade: O usuário pode editar disciplina manualmente

Cenário: Editar uma disciplina
  Dado que eu estou na página de inicial de Disciplina
  E esteja logado
  Quando eu clicar "Editar"
  Então eu deveria ir para página Editar Disciplina
  Quando eu preencher "Código" com "1231234"
  E eu preencher "Nome" com "Disciplina Teste2"
  E eu pressionar "Salvar"
  Então eu deveria estar na página mostrar Disciplina
  E eu deveria ver "Disciplina atualizada com sucesso."
