class Tipo < ApplicationRecord
	has_many :candidatos, dependent: :destroy
	validates :descricao, uniqueness: { case_sensitive: false }
end