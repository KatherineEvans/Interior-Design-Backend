class CreateArtPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :art_pieces do |t|
      t.string :description
      t.integer :height
      t.integer :width
      t.string :user_id
      t.string :measurement
      t.string :photo

      t.timestamps
    end
  end
end
