class Api::V1::PlayerController < ApplicationController
    
    def new
        @player = Player.new
    end

    def index
        players = Player.all
        render json: players.to_json(:include => {
            :name
        })
    end

    def show
        player = Player.find_by(id: params[:id])
        render json: player.to_json(:include => {
            :name
        })
    end

end
