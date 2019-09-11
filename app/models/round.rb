class Round < ApplicationRecord
    belongs_to :game
    belongs_to :quote

    def wrong_answers
        incorrect_answers = []
        authors = []
        while incorrect_answers.length < 3
            sample = Quote.all.sample
            if sample.author != self.quote.author && !authors.include?(sample.author)
                incorrect_answers << sample
                authors << sample.author
            end
        end
        incorrect_answers
    end


end