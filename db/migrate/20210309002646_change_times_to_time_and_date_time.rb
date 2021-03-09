class ChangeTimesToTimeAndDateTime < ActiveRecord::Migration[6.0]
  def change
    change_column :event_bands, :start_time, 'time USING CAST(start_time AS time)'
    change_column :event_bands, :end_time, 'time USING CAST(end_time AS time)'
    rename_column :events, :start_time, :start_date_time
    rename_column :events, :end_time, :end_date_time
    change_column :events, :start_date_time, 'time USING CAST(start_date_time AS time)'
    change_column :events, :end_date_time, 'time USING CAST(end_date_time AS time)'
    remove_column :events, :date, :string
  end
end
