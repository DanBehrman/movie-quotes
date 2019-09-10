class GamesController < ApplicationController
    def create
        game = Game.create
        game.setup_game
        redirect_to "/games/#{game.id}/1"
    end

    def guess
        @game = Game.find(params[:id])
        @status = params[:status].to_i
        @answers = @game.wrong_answers
        @answers << @game.quote
    end

    def assess

    end

    def complete

    end
end