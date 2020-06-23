class Api::V1::ObservationsController < ApplicationController
    def index
        observations = Observation.all 
        render json: observations
    end

    def create
        observation = Observation.create(observation_params)
        render json: observation
    end

    def destroy
        observation = Observation.find(params[:id])
        observation.delete
    end

    private 
    def observation_params
        params.require(:observation).permit(:id, :teacherId, :coachId, :date, :move, :score, :notes, :comments, :is_released)
    end
end
