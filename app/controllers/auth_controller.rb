class AuthController < ApplicationController
    protect_from_forgery

    def login
        user = User.find_by(username: params[:username])
        if (user && user.authenticate(params[:password]))
          render json: user
        else
          render json: {errors: "Invalid email/password combination. Please try again or register if you do not already have an account."}
        end
    end

    def autologin
      userId = request.headers['Authorization']
      user = User.find(userId)
      render json: user
    end
end