class QuestionCategory < ApplicationRecord
  belongs_to :question
  belongs_to :category

  validates :question_id, presence: true
  validates :category_id, presence: true
end
