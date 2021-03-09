class ChangeTimeToDateTimeInEventBands < ActiveRecord::Migration[6.0]
  def change
    change_column :event_bands, :start_time, 'datetime USING CAST(start_time AS datetime)'
  end
end
