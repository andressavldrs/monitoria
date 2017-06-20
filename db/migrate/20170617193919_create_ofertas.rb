class CreateOfertas < ActiveRecord::Migration[5.1]
  def change
    create_table :ofertas do |t|
      t.string :turma
      t.belongs_to :disciplina, index: {unique:true}, foreign_key:true

      t.timestamps
    end
  end
end
