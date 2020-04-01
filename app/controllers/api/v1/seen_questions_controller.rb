class Api::V1::SeenQuestionsController < ApplicationController
    before_action :find_seen_question, only: [:show]

    def index
        begin
            @seen_questions = SeenQuestion.all
            render json: @seen_questions
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def create
        @seen_question = Event.create(seen_question_params)
        if @seen_question.valid?
            render json: @seen_question, status: 200
        else
            @all_errors = ''
            @seen_question.errors.full_messages.each do |message|
                @all_errors += `#{message} - `
            end
            render json: { error: @all_errors }, status: :not_acceptable
        end
    end

    def show
        begin
            render json: @seen_question, status: 200
        rescue StandardError => e  
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def seen_question_params
        params.permit(:user_id, :question_id, :skipped )
    end

    def find_seen_question
        @seen_question = SeenQuestion.find(params[:id])
    end

end
