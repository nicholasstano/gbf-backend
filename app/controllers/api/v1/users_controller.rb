class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.require(:user).permit(:id, :username, :password_digest, :teacher_name, :is_teacher, :is_coach, :is_leader, :organization)
    end
end