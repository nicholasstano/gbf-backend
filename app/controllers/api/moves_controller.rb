class Api::MovesController < ApplicationController
    def index
        moves = Move.all 
        render json: moves
    end

    def create
        move = Move.create(move_params)
        render json: move
    end

    private 
    def move_param
        params.require(:move).permit(:id, :phase, :name, :description)
    end 
end
