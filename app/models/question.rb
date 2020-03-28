class Question < ApplicationRecord
    has_many :seen_questions, dependent: :destroy
    has_many :users, :through => :seen_questions
    has_many :question_categories
    has_many :categories, :through => :question_categories

    validates_presence_of :content, :spiciness
    validate :proper_range

    def proper_range
        if self.spiciness < 1
            self.errors.add(:spiciness, "So vanilla? Spiciness can't be less than 1")
        elsif self.spiciness > 5
            self.errors.add(:spiciness, "Come on, it can't be that spicy! Max spiciness is 5.")
        end
    end
end
