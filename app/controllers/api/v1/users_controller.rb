class Api::V1::UsersController < ApplicationController
    #### THIS CODE IS COMMENTED OUT UNTIL WE HAVE LOGIN ####
    # skip_before_action :authorized, only: [:create]
    before_action :find_user, only: [:update, :show, :destroy]

    def index
        begin
            @users = User.all
            render json: @users
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        render json: @user, status: :accepted
    end

    def create
        # byebug
        @user = User.create!(user_params)
            if @user.valid? # && params[:user][:password] === params[:user][:password_confirmation]
                payload = {user_id: @user.id}
                @token = encode_token(payload)
                render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
            else
                # if params[:user][:password] != params[:user][:password_confirmation]
                #     @all_errors += "Passwords don't match."
                # end
                render json: {error: @user.errors.full_messages }, status: :not_acceptable
            end
    end

    def update
        if @user.update(user_params)
            render json: @user, status: :accepted
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:username, :email, :password_digest)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
