class Wall < ApplicationRecord
  belongs_to :user
  has_many :user_walls
end
