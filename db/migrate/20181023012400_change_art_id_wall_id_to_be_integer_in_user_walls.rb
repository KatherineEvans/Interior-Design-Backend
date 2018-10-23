class ChangeArtIdWallIdToBeIntegerInUserWalls < ActiveRecord::Migration[5.2]
  def change
    change_column :user_walls, :art_id, 'integer USING CAST(art_id AS integer)' 
    change_column :user_walls, :wall_id, 'integer USING CAST(wall_id AS integer)'
  end
end
