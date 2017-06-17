class ChangeDataTypeForIra < ActiveRecord::Migration[5.1]
  def change
  	change_column :candidatos, :ira, :decimal
  end
end
