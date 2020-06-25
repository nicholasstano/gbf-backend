class Api::V1::ActionStepsController < ApplicationController
    def index
        action_steps = ActionStep.all 
        render json: action_steps
    end

    def create
        action_step = ActionStep.create(action_step_params)
        render json: action_step
    end

    def destroy
        action_step = ActionStep.find(params[:id])
        action_step.delete
    end

    private 
    def action_step_params
        params.require(:action_step).permit(:id, :short_name, :long_text, :date, :move_id, :is_assigned, :is_completed, :teacherId, :coachId)
    end
end