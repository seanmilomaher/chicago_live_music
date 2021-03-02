class EventBand < ApplicationRecord
  belongs_to :band
  belongs_to :event

  validates :band_id, :event_id, presence: true
end
