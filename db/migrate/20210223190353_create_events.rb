class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :venue_id
      t.string :start_time
      t.string :end_time
      t.string :date
      t.string :cover
      t.string :age_limit
      t.string :image

      t.timestamps
    end
  end
end
