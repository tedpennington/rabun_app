json.extract! review, :id, :rating_overall, :rating_damage, :rating_payment, :rating_communication, :rating_checkinout, :people_number, :comment, :property_name, :property_address, :property_unit, :property_city, :property_state, :property_zip, :created_at, :updated_at
json.url review_url(review, format: :json)
