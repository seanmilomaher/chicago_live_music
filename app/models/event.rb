class Event < ApplicationRecord
  belongs_to :venue
  has_many :event_bands
  has_many :bands, through: :event_bands

  # validates :name, :venue_id, :start_time, :end_time, :date, :cover, :age_limit, :image, presence: true
  # validates :name, uniqueness: true
end
