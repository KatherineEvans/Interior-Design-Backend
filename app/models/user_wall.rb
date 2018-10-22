class UserWall < ApplicationRecord
  belongs_to :art_piece
  belongs_to :wall
end
