class Oferta < ApplicationRecord
	belongs_to :disciplina
	belongs_to :user
	has_one :selecionado
	has_many :candidatos
end
