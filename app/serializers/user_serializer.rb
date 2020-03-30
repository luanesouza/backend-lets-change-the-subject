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
    not_seen = Question.all.select{|q| q.categories.select{|c| c.name.include?(cat)}}.select{|q| !seen_questions.include?(q)}.shuffle
    return not_seen
  end

end
