class Disciplina < ApplicationRecord
  
	has_many :ofertas

 	require 'csv'
#  	def self.import(file)
#    		CSV.foreach(file.path, headers: true) do |row|
#     		Disciplina.create! row.to_hash
#     	end
# 	end
# end


	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
	     	disciplina_hash = row.to_hash
	      	disciplina = Disciplina.where(id: disciplina_hash["id"])

	     	if disciplina.count == 1
	       		disciplina.first.update_attributes(disciplina_hash)
	      	else
	        	Disciplina.create!(disciplina_hash)
	      	end
		end
	end

	validates :nome, :presence => true, :uniqueness => true
	validates :codigo, numericality: { only_integer: true }, :presence => true, :uniqueness => true
	#valida para não incluir disciplinas duplicadas
end

	


