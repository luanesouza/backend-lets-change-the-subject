class Category < ApplicationRecord
    has_many :question_categories
    has_many :questions, :through => :question_categories

    validates :name, presence: true

    def to_param
        name
    end
end
