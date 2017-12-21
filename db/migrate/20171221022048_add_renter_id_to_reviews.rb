class AddRenterIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :renter_id, :integer
  end
end
