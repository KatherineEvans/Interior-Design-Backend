class CreateWalls < ActiveRecord::Migration[5.2]
  def change
    create_table :walls do |t|
      t.string :color
      t.integer :height
      t.integer :width
      t.string :user_id
      t.string :measurement
      t.string :photo

      t.timestamps
    end
  end
end
