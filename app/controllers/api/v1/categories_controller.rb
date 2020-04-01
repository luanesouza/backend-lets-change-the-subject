class Api::V1::CategoriesController < ApplicationController
    before_action :find_category, only: [:show]

    def index
        begin
            @categories = Category.all
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: { category: CategorySerializer.new(@category)}, status: 200
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
