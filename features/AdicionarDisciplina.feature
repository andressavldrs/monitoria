Feature: Add manualy disciplina
	As user
	In order to manage disciplinas registered
	I Want add disciplina offered

	Background: User is logged in
    	Given I am logged

	Scenario: Add disciplina
		When I am in the disciplina page
		When I press the image "Adicionar"
		And fill the form
		Then I Should see my register in the list