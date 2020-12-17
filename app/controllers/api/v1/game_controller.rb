class Api::V1::GameController < ApplicationController

    def new
        game = Game.new
    end

    def index
        games = Game.all
        render json: games
    end

    def show
        game = Game.find_by(id: params[:id])
        render json: game 
    end
end
