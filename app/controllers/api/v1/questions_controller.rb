class Api::V1::QuestionsController < ApplicationController
    before_action :find_question, only: [:show]

    def index
        begin
            @questions = Question.all
            render json: @questions
        rescue StandardError => e 
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: { question: QuestionSerializer.new(@question)}, status: 200
        rescue StandardError => e 
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def question_params
        params.require(:question).permit(:content, :spiciness, :additional_link )
    end

    def find_question
        @question = Question.find(params[:id])
    end
end
