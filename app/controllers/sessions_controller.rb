class SessionsController < ApplicationController
    def new

    end

    def create
        player = Player.find_by(user_name: params[:user_name])
        if player && player.authenticate(params[:password])
            session[:player_id] = player.id
            redirect_to player_path(player)
        elsif player.nil?
            flash.now[:messages] = ["We could not find that username, please try again."]
            render :new
        else
            flash.now[:messages] = ["Username found, but the password you have tried is incorrect."]
            render :new
        end
    end

    def destroy
        session.delete(:player_id)
        redirect_to '/login'
    end
end