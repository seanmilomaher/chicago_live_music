class ChangeShowIdToEventIdInEventBand < ActiveRecord::Migration[6.0]
  def change
    rename_column :event_bands, :show_id, :event_id
  end
end
