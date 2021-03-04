class Venue < ApplicationRecord
  has_many :events

  geocoded_by :address
  after_validation :geocode

  has_secure_password
  validates :name, :address, :image, :email, presence: true, uniqueness: true
end