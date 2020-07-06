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
      user = User.find_by(params[:id])
      render json: user
    end
end