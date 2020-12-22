class Api::V1::GameController < ApplicationController

    def create
        game = Game.new(game_params)
    end

    def index
        games = Game.all
        render json: games
    end

    def show
        game = Game.find_by(id: params[:id])
        render json: game 
    end

    private

    def game_params
        params.require(:game).permit(:score)
    end
end
