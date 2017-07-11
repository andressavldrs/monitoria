class Candidato < ApplicationRecord
	belongs_to :oferta
	belongs_to :tipo
	has_many :selecionados, dependent: :destroy

	validates :matricula, :nome, :email, presence: true 
	validates :ira, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
	
end
