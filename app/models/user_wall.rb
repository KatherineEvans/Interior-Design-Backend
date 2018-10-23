class UserWall < ApplicationRecord
  belongs_to :art_piece, class_name: "ArtPiece", foreign_key: "art_id"
  belongs_to :wall, class_name: "Wall", foreign_key: "wall_id"
end
