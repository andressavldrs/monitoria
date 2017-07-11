class Selecionado < ApplicationRecord
  belongs_to :candidato
  validates :candidato, uniqueness: true
end
