class CategorySerializer < ActiveModel::Serializer
  attributes :name, :questions

  def questions
    questions = object.questions.map{|q| 
      {
        "id": q.id,
        "spiciness": q.spiciness,
        "additionalLink": q.additional_link,
        "content": q.content
      }}.shuffle
    if questions.length > 100
      return questions.sample(100)
    else 
      return questions
    end
  end

  #### THIS CODE IS FOR WHEN WE INTRODUCE LOGIN ##########
  # def questions
  #   questions = object.question_categories.map(&:question).map{|q| 
  #   {
  #     "id": q.id,
  #     "spiciness": q.spiciness,
  #     "additionalLink": q.additional_link,
  #     "content": q.content
  #   }}.shuffle
  #   if questions.length > 50
  #     return questions.sample(50)
  #   else 
  #     return questions
  #   end
  # end 

end
