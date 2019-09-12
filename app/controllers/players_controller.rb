class PlayersController < ApplicationController
    before_action :current_user

    def index
        @players = Player.all
    end

    def show
        byebug
        @player = Player.find(params[:id])
    end
    
    def new
        @player = Player.new
    end

    def create
        @player = Player.create(player_params)
        if @player.valid?
            @player.save
            session[:player_id] = @player.id
            redirect_to player_path(@player)
        else
            flash.now[:messages] = @player.errors.full_messages
            render :new
        end
    end

    def edit
        @player = Player.find(params[:id])
    end

    def update
        @player = Player.find(params[:id])
        if @player.update(player_params)
            redirect_to player_path(@player)
        else
            flash.now[:messages] = @player.errors.full_messages
            render :edit
        end
    end

    def destroy
        player = Player.find(params[:id])
        player.delete
        redirect_to '/'
    end

    private

    def player_params
        params.require(:player).permit(:user_name, :password, :motto, :player_highscore)
    end

end