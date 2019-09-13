class QuotesController < ApplicationController
    before_action :current_user
    def new
        @quote = Quote.new
    end

    def create
        @quote = Quote.create(quote_params)
        if @quote.valid?
            @quote.save
            redirect_to players_path
        else
            flash.now[:messages] = @quote.errors.full_messages
            render :new
        end
    end

    private

    def quote_params
        params.require(:quote).permit(:text, :author)
    end
end