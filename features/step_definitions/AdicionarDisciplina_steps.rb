Then(/^I should see welcome message$/) do
	have_content ('Logado com sucesso.')
end

When(/^I am in the disciplina page$/) do
  visit '/disciplinas/'
end

When /^(?:|I )press the image "([^"]*)"$/ do |button|
  if button == 'Editar'
    click_link('Editar')
  elsif (button == 'Deletar')
    click_link('Deletar')
  elsif button == 'Adicionar'
    click_link('Adicionar')
  end
end

When(/^fill the form$/) do
  fill_in 'Código', with: "123123"
  fill_in 'Nome', with: "Disciplina teste"  
  click_button 'Salvar'
end


Then(/^I Should see my register in the list$/) do
  have_content('Disciplina teste')
end


Given /^I have one\s+user "([^\"]*)" with email "([^\"]*)" and password "([^\"]*)"$/ do |username,email, password|
  @user = User.new(:email => email,
                   :username=>username,
                   :password => password,
                   :password_confirmation => password)
   @user.save!
end

Given /^(?:|I )am an authenticated user$/ do
  nome = 'example'
  email = 'example@example.com'
  password = 'secret!'

  Given %{I have one user "#{nome}" with email "#{email}" and password "#{password}"}
  And %{I go to the monitoria entrar page}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Senha" with "#{password}"}
  And %{I press "Entrar"}
end

And(/^I go to the monitoria entrar page$/) do
	visit '/users/sign_in'
end



When(/^click in "([^"]*)"$/) do |link|
  click_link (link)
end







