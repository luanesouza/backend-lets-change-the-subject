class Api::V1::UsersController < ApplicationController
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
        @user = User.new(user_params)
            if @user.valid? # && params[:user][:password] === params[:user][:password_confirmation]
                @user.save
                @token = encode_token({ user_id: @user.id })
                render json: @user, status: :created
            else
                @all_errors = ''
                @user.errors.full_messages.each do |message|
                    @all_errors += "#{message} - "
                end
                # if params[:user][:password] != params[:user][:password_confirmation]
                #     @all_errors += "Passwords don't match."
                # end
                render json: { error: @all_errors }, status: :not_acceptable
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
        params.permit(:username, :email)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
