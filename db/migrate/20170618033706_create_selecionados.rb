class CreateSelecionados < ActiveRecord::Migration[5.1]
  def change
    create_table :selecionados do |t|
      t.belongs_to :candidato, index: {unique:true}, foreign_key:true

      t.timestamps
    end
  end
end
