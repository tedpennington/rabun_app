class AddImageToRenters < ActiveRecord::Migration[5.1]
  def change
    add_column :renters, :image, :string
  end
end
