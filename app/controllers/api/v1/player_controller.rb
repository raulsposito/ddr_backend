class Api::V1::PlayerController < ApplicationController
    
    def create
        @player = Player.new(player_params)
    end

    def index
        players = Player.all
        render json: players
    end

    def show
        player = Player.find_by(id: params[:id])
        render json: player
    end

    private 

    def player_params
        params.require(:player).permit(:name)
    end

end
