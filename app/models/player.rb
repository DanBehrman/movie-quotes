class Player < ApplicationRecord
    has_many :player_games
    has_many :games, through: :player_games
    has_secure_password
    validates :user_name, uniqueness: true, presence: true, length: { minimum: 3 }
    validates :password, length: { in: 6..20 }
end
