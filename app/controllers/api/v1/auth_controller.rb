class Api::V1::AuthController < ApplicationController

    def login
      byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
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
end
