class CategorySerializer < ActiveModel::Serializer
  attributes :name, :questions

  def questions
    questions = object.question_categories.map(&:question).map{|q| 
    {
      "id": q.id,
      "spiciness": q.spiciness,
      "additionalLink": q.additional_link,
      "content": q.content
    }}.shuffle
    if questions.length > 50
      return questions.sample(50)
    else 
      return questions
    end
  end 

end
