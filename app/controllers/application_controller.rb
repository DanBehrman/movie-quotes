class ApplicationController < ActionController::Base


    def current_user
        player = Player.find(session[:player_id]) if session[:player_id]
    end

    def logged_in?
        current_user
    end

    def authorized?
        redirect_to '/login' unless logged_in?
    end
end
