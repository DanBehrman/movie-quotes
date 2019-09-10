class Game < ApplicationRecord
    has_many :player_games
    has_many :players, through: :player_games
    has_many :rounds
    has_many :quotes, through: :rounds

    def setup_round
        Round.create(game_id: self.id, quote_id: Quote.all.sample.id)
    end

    def setup_game
       5.times do setup_round end
    end

    def wrong_answers
        incorrect_answers = []
        while incorrect_answers.length < 3
            sample = Quote.all.sample
            if sample.author != self.round.quote.author && !incorrect_answers.include?(sample.author)
                incorrect_answers << sample
            end
        end
        incorrect_answers
    end
end