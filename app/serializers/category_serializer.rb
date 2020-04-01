class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :remainingFriendsQs, :remainingCoworkersQs, :remainingPartnersQs

  def remainingFriendsQs
    get_questions("friends")
  end

  def remainingCoworkersQs
    get_questions("coworkers")
  end

  def remainingPartnersQs
    get_questions("partners")
  end


  def get_questions(cat)
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
