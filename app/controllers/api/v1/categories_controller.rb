class Api::V1::CategoriesController < ApplicationController
    #### THIS CODE IS COMMENTED OUT UNTIL WE HAVE LOGIN ####
    # skip_before_action :authorized, only: [:index]
    before_action :find_category, only: [:show]

    def index
        begin
            @categories = Category.all.map{|c| {
                name: c.name
            }}
            render json: @categories, status: 200
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        byebug
        begin
            render json: @category, status: 200
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def question_params
        params.permit(:name)
    end

    def find_category
        @category = Category.find_by(name: params[:name])
    end
end
