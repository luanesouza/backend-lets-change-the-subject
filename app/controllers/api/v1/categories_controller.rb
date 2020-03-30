class Api::V1::CategoriesController < ApplicationController
    before_action :find_category, only: [:show]

    def index
        begin
            @categories = Category.all
            render json: @categories
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: { question: CategorySerializer.new(@category)}, status: 200
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def question_params
        params.require(:category).permit(:name)
    end

    def find_category
        @category = Category.find_by(name: params[:name])
    end
end
