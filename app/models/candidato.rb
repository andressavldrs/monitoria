class Candidato < ApplicationRecord
	belongs_to :oferta
	belongs_to :tipo
	has_many :selecionados, dependent: :destroy
end
