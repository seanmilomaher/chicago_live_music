class Band < ApplicationRecord
  has_many :event_bands
  has_many :events, through: :event_bands

  validates :name, :from_city, :from_state, :image, :bio, presence: true
end
