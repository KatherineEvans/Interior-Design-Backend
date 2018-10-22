class User < ApplicationRecord
  has_many :art_pieces
  has_many :user_walls, through: :walls
  has_many :walls
end
