class Api::V1::FeedbacksController < ApplicationController
    def index
        feedback = Feedback.all 
        render json: feedback
    end

    def create
        feedback = Feedback.create(feedback_params)
        render json: feedback
    end

    private 

    def feedback_params
        params.require(:feedback).permit(:id, :teacherId, :coachId, :date, :observation_id, :praise, :quick_hits, :action_step_id, :see_it, :name_it, :do_it, :is_released)
    end
end