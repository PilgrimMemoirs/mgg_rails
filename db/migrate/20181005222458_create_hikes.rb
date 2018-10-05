class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.string :name
      t.text :description
      t.string :url
      t.decimal :trailhead_lat
      t.decimal :trailhead_long
      t.string :location
      t.string :difficulty
      t.decimal :length
      t.decimal :rating
      t.decimal :ascent
      t.decimal :descent
      t.decimal :altitude_high
      t.decimal :altitude_low
      t.string :img_small
      t.string :img_large
      t.integer :hiking_project_id

      t.timestamps
    end
  end
end
