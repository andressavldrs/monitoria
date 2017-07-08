class CreateOfertas < ActiveRecord::Migration[5.1]
  def change
    create_table :ofertas do |t|
      t.string :turma
      t.belongs_to :disciplina, foreign_key:true

      t.timestamps
    end
  end
end
