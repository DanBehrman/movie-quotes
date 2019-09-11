class GamesController < ApplicationController
   
    def create
        game = Game.create
        game.setup_game(session[:player_id])
        redirect_to "/games/#{game.id}/0"
    end

    def guess
        @player = current_user
        @game = Game.find(params[:id])
        @status = params[:status].to_i
        @answers = @game.rounds[@status].wrong_answers
        @answers << @game.rounds[@status].quote
        @answers.shuffle!
    end

    def assess
        @game = Game.find(params[:id])
        @status = params[:status].to_i
        @correct_answer = @game.rounds[@status].quote
        if params[:quote_id].to_i == @correct_answer.id
            @answer = "You're correct!"
        else
            @answer = "You're bad at guessing!"
        end
    end

    def complete
        
    end
end