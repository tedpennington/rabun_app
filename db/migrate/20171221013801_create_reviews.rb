class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating_overall
      t.integer :rating_damage
      t.integer :rating_payment
      t.integer :rating_communication
      t.integer :rating_checkinout
      t.integer :people_number
      t.text :comment
      t.string :property_name
      t.string :property_address
      t.string :property_unit
      t.string :property_city
      t.string :property_state
      t.integer :property_zip

      t.timestamps
    end
  end
end
