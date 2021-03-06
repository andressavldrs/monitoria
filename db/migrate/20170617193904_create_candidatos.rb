class CreateCandidatos < ActiveRecord::Migration[5.1]
  def change
    create_table :candidatos do |t|
      t.integer :matricula
      t.string :nome
      t.integer :semestre
      t.integer :ira
      t.string :email
      t.belongs_to :oferta, foreign_key:true
      t.belongs_to :tipo, foreign_key:true

      t.timestamps
    end
  end
end
