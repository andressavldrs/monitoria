class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :ofertas
  
  # Valida email para só ser aceito nos formatos @cic.unb.br ou @unb.br
  #validates :email, format: {with: /\A([\w.-]+)@(cic.)?(unb.br)\z/i ,message: "Parece haver um problema com seu email.\n Certifique-se de utilizar seu email institucional!" }

end