class Oferta < ApplicationRecord
	belongs_to :disciplina
	belongs_to :user
	has_many :selecionados
	has_many :candidatos

	def nome_with_turma
		"#{disciplina.codigo} - #{disciplina.nome} Turma:#{turma}"
	end
end
