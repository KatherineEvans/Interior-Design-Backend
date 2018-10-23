class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i

  has_many :art_pieces
  has_many :user_walls, through: :walls
  has_many :walls

  def full_name
    "#{first_name} #{last_name}"
  end

end
