class QuestionCategory < ApplicationRecord
  belongs_to :question
  belongs_to :category

  validates_presence_of :question_id, :category_id
end
