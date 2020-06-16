class Api::V1::ObservationsController < ApplicationController
    def index
        observations = Observation.all 
        render json: observations
    end

    def create
        observation = Observation.create(observation_params)
        render json: observation
    end

    private 
    def observation_params
        params.require(:observation).permit(:id, :teacherId, :coachId, :date, :move, :score, :notes, :comments, :is_released)
    end
end
