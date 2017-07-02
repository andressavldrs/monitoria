class Tipo < ApplicationRecord
	has_many :candidatos
	validates :descricao, uniqueness: { case_sensitive: false }
end