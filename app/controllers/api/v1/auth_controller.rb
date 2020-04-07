class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def login
        user = User.find_by(username: user_login_params[:username])
        if user && user.authenticate(user_login_params[:password])
            # payload={user_id: user.id}
            # token= encode_token(payload)
            render json: {user: user, success: "Welcome back, #{user.username}"}
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
