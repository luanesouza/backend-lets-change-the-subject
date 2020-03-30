class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :questions

  def questions
    questions = object.question_categories.map(&:question).map{|q| 
    {
      "id": q.id,
      "spiciness": q.spiciness,
      "additionalLink": q.additional_link,
      "content": q.content
    }}
  end

end
