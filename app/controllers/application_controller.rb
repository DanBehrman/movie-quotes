class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user ||= Player.find(session[:player_id]) if session[:player_id]
    end

    def logged_in?
        !!current_user
    end

    def authorized?
        redirect_to '/login' unless logged_in?
    end
end
