class CreateEventBands < ActiveRecord::Migration[6.0]
  def change
    create_table :event_bands do |t|
      t.integer :band_id
      t.integer :show_id
      t.string :start_time
      t.string :end_time
      t.string :order

      t.timestamps
    end
  end
end
