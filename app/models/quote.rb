class Quote < ApplicationRecord
    has_many :rounds
    has_many :games, through: :rounds
end