class Venue < ApplicationRecord
  has_many :events

  has_secure_password
  validates :name, :address, :image, :email, presence: true, uniqueness: true
end