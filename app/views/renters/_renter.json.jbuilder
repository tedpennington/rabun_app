json.extract! renter, :id, :first_name, :last_name, :aka, :email, :street_address, :city, :state, :zip, :phone_number, :mobile_phone, :vrbo_url, :airbnb_url, :facebook_url, :linkedin_url, :misc, :created_at, :updated_at
json.url renter_url(renter, format: :json)
