class AddUserIdToOfertas < ActiveRecord::Migration[5.1]
  def change
    add_column :ofertas, :user_id, :integer
  end
end
