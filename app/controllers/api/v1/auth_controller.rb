class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]

    def login
        user = User.find_by(username: user_login_params[:username])
        # byebug
        if user
            payload={user_id: user.id}
            token= encode_token(payload)
            render json: {user: user, token: token}, status: :success
        else
            render json: {failure: "Login failed! User or password invalid!"}
        end
    end

    def auto_login
        if current_user
            render json: current_user
        else 
            render json: {errors: "No user logged in"}
        end
    end

    private

    def user_login_params
      params.permit(:username, :password)
    end
end
