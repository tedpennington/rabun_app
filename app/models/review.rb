class Review < ApplicationRecord
  belongs_to :user
  belongs_to :renter
end
