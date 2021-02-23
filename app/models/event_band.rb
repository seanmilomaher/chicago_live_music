class EventBand < ApplicationRecord
  belongs_to :band
  belongs_to :event
end
