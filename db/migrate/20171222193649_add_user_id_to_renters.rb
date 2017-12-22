class AddUserIdToRenters < ActiveRecord::Migration[5.1]
  def change
    add_column :renters, :user_id, :integer
  end
end
