class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :additional_link, :spiciness

  def additionalLink
    object.additional_link
  end
end
