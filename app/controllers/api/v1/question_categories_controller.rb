class Api::V1::QuestionCategoriesController < ApplicationController
    #### THIS CODE IS COMMENTED OUT UNTIL WE HAVE LOGIN ####
    # skip_before_action :authorized, only: [:index]
    before_action :find_question_category, only: [:show]

    def index
        begin
            @question_categories = QuestionCategory.all
            render json: @question_categories
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: @question_category, status: 200
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def question_params
        params.permit(:category_id, :question_id)
    end

    def find_question_category
        @question_category = QuestionCategory.find(params[:id])
    end
end
