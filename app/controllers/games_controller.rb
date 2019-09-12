class GamesController < ApplicationController
    before_action :current_user
   
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
        pg = PlayerGames.find_by(game_id: @game.id, player_id: session[:player_id])
        if params[:quote_id].to_i == @correct_answer.id
            @answer = "You're correct!"
           pg = PlayerGames.find_by(game_id: @game.id, player_id: session[:player_id])
           pg.update(score: pg.score + 10)
        else
            @answer = "You're bad at guessing!"
        end
        @score = pg.score
    end

    def complete
        @player = current_user
        @game = Game.find(params[:id])
        @status = params[:status].to_i
        pg = PlayerGames.find_by(game_id: @game.id, player_id: session[:player_id])
        @current_score = pg.score
        if @current_score > @game.game_highscore
            @game.update(game_highscore: @current_score)
            @game.game_highscore = @current_score
      
        end
        if @current_score > @player.player_highscore
            @player.player_highscore = @current_score
            @player.save(validate: false)
        end
  
    end
end