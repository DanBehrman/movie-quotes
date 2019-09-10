class Round < ApplicationRecord
    belongs_to :game
    belongs_to :quote

    def get_question
        my_quote = Quote.all.sample
    end

    def wrong_answers
        incorrect_answers = []
        while incorrect_answers.length < 3
            sample = Quote.all.sample
            if sample.author != self.quote.author && !incorrect_answers.include?(sample.author)
                incorrect_answers << sample.author
            end
        end
        incorrect_answers
    end
end