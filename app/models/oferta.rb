class Oferta < ApplicationRecord
	belongs_to :disciplina
	has_one :selecionado
	has_many :candidatos
end
