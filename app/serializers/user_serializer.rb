class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :remainingFriendsQs, :remainingCoworkersQs, :remainingPartnersQs

  def remainingFriendsQs
    find_not_seen_in_cat("friends")
  end

  def remainingCoworkersQs
    find_not_seen_in_cat("coworkers")
  end

  def remainingPartnersQs
    find_not_seen_in_cat("partners")
  end

  def seen_questions
    object.seen_questions.map(&:question)
  end

  def find_not_seen_in_cat(cat)
    not_seen = Question.all.select{|q| q.categories.select{|c| c.name.include?(cat)}}.select{|q| !seen_questions.include?(q)}.map{|q| 
      {
        "id": q.id,
        "spiciness": q.spiciness,
        "additionalLink": q.additional_link,
        "content": q.content
      }}.shuffle
    if not_seen.length > 100
      return not_seen.sample(100)
    else 
      return not_seen
    end
  end

end
