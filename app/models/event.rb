class Event < ApplicationRecord
  belongs_to :venue
  has_many :event_bands
  has_many :bands, through: :event_bands
end
