class Oferta < ApplicationRecord
	belongs_to :disciplina
	belongs_to :user
	has_many :candidatos, dependent: :destroy

	validates :turma, presence: :true
	def nome_with_turma
		"#{disciplina.codigo} - #{disciplina.nome} Turma:#{turma}"
	end
end
