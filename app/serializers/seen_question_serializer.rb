class SeenQuestionSerializer < ActiveModel::Serializer
  attributes :id, :questionId, :userId, :skipped

  def questionId
    object.question_id
  end

  def userId
    object.user_id
  end
end
