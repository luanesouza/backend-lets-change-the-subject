class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :questions

  def questions
    object.question_categories.map(&:question)
  end
end
