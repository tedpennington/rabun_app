class Renter < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews, dependent: :destroy
end
