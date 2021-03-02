class Venue < ApplicationRecord
  has_many :events

  has_secure_password
  validates :name, :email, :address, presence: true, uniqueness: true
  
end