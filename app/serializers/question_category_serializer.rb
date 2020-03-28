class QuestionCategorySerializer < ActiveModel::Serializer
  attributes :questionId, :categoryId
  
  def questionId
    object.question_id
  end

  def categoryId
    object.category_id
  end
end
