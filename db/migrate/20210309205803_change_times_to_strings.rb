class ChangeTimesToStrings < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_time, :string
    change_column :events, :end_time, :string
    change_column :event_bands, :start_time, :string
    change_column :event_bands, :end_time, :string
  end
end
