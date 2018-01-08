class CreateRenters < ActiveRecord::Migration[5.1]
  def change
    create_table :renters do |t|
      t.string :first_name
      t.string :last_name
      t.string :aka
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone_number
      t.string :mobile_phone
      t.string :vrbo_url
      t.string :airbnb_url
      t.string :facebook_url
      t.string :linkedin_url
      t.string :misc

      t.timestamps
    end
  end
end
