class Renter < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews, dependent: :destroy
  validates :first_name, :last_name, presence: true
end
