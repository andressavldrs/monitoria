#language: pt

Funcionalidade: O usuário pode excluir disciplina manualmente

Cenário: Excluir uma disciplina
  Dado que eu estou na página de inicial de Disciplina
  E esteja logado
  Quando eu clicar "Excluir"
  Então eu deveria ver "Você tem certeza?"
  Quando eu pressionar "Ok"
  E eu deveria ver "Disciplina excuída com sucesso."
