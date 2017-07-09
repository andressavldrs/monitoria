# Monitoria@CIC
Projeto da disciplina de Engenharia de Software 2/2016 para gerenciar as bolsas de monitoria, é composto
por as seguintes classes:
  
  * **Ofertas**: CRUD da oferta de bolsas, seleciona-se a disciplina a ser ofertada, o professor 
  que está ofertando a bolsa de monitoria e o número de vagas disponíveis.
  
  * **Disciplinas**: gerencia o resultado do crawler, na tabela *disciplinas* estao todas 
  as disciplinas ofertadas pelo CiC no semestre.
  
  * **Candidatos**: cadastro de candidato que desejam se aplicar a monitoria de um certa disciplina.
  
  * **Selecionados**: seleção do candidatos para uma certa oferta de monitoria. è
   feita por um colaborador autenticado via login.
  
   
Para rodar os testes é necessário criar o banco de dados e inicializa-lo:
```
  rake db:migrate RAILS_ENV=test
  rake db:seed RAILS_ENV=test
  
```
E executar o cucumber e rspec
```
  bundle exec rake cucumber
  rspec spec
``` 
E para rodar a aplicaçâo é preciso executar:
```
  rake db:migrate
  rake db:seed
  rails server
```
Ao iniciar a aplicação pela primeira vez é necessário inicializar a gem figaro
```
  bundle exec figaro install
  rake db:seed
  rails server
```
Configure o email usado para enviar as requisições de login
```
  Vá até:
  config/application.yml

  Cole no arquivo:
  GMAIL_DOMAIN: mail.gmail.com
  GMAIL_USERNAME: exemplo_email@gmail.com #utilize um email válido do gmail
  GMAIL_PASSWORD: senha_email #utilize a senha deste email

  OBS: Este arquivo por medida de segurança não é possivel ser commitado para o github
```
