class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :additionalLink, :spiciness

  def additionalLink
    object.additional_link
  end

end
