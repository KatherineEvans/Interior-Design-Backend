class CreateUserWalls < ActiveRecord::Migration[5.2]
  def change
    create_table :user_walls do |t|
      t.string :art_id
      t.string :wall_id

      t.timestamps
    end
  end
end
