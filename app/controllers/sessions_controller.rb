class SessionsController < ApplicationController
    def new

    end

    def create
        player = Player.find_by(user_name: params[:user_name])
        if player && player.authenticate(params[:password])
            session[:player_id] = player.id
            redirect_to player_path(player)
        else
            render :new
        end
    end

    def destroy
        session.delete(:player_id)
        redirect_to '/sessions/new'
    end
end