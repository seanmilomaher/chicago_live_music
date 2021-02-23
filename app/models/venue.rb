class Venue < ApplicationRecord
  has_many :events

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
