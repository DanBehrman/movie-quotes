class Game < ApplicationRecord
    has_many :player_games
    has_many :players, through: :player_games
    has_many :rounds
    has_many :quotes, through: :rounds

    def setup_round
        Round.create(game_id: self.id, quote_id: Quote.all.sample.id)
    end

    def setup_game(player_id)
       5.times do setup_round end
       PlayerGames.create(game_id: self.id, player_id: player_id, score: 0, status: 0)
       #removed player_id: :sessions[user_id]
    end

    def assign_player
    end

end