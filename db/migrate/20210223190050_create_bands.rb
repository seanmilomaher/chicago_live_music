class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :from_city
      t.string :from_state
      t.string :image
      t.text :bio

      t.timestamps
    end
  end
end
