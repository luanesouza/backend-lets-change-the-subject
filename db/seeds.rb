QuestionCategory.destroy_all
SeenQuestion.destroy_all
Category.destroy_all
Question.destroy_all
User.destroy_all

QuestionCategory.reset_pk_sequence
SeenQuestion.reset_pk_sequence
Category.reset_pk_sequence
Question.reset_pk_sequence
User.reset_pk_sequence

############### USERS ###############
annie = User.create!(username: "annie2020", email:"annie2020@gmail.com")
victoria = User.create!(username: "victoria2020", email: "victoria2020@gmail.com")
sylwia = User.create!(username: "sylwia2020", email:"sylwia2020@gmail.com")

############### QUESTIONS ###############
q1 = Question.create!(content: "What's your favorite cereal?", spiciness: 1, additional_link: "")
q2 = Question.create!(content: "Do you put milk or ceral first and why?", spiciness: 2, additional_link: "")
q3 = Question.create!(content: "Given the choice of anyone in the world, whom would you want as a dinner guest?", spiciness: 2, additional_link: "")
q4 = Question.create!(content: "Would you like to be famous? In what way?", spiciness: 2, additional_link: "")
q5 = Question.create!(content: "Before making a telephone call, do you ever rehearse what you are going to say? Why?", spiciness: 2, additional_link: "")
q6 = Question.create!(content: "What would constitute a 'perfect' day for you?", spiciness: 2, additional_link: "")
q7 = Question.create!(content: "When did you last sing to yourself? To someone else?", spiciness: 2, additional_link: "")

############### CATEGORIES ###############
c1 = Category.create!(name: "friends")
c2 = Category.create!(name: "coworkers")
c3 = Category.create!(name: "partners")

############### QUESTION_CATEGORIES ###############
qc1 = QuestionCategory.create!(question_id: q1.id, category_id: c1.id)
qc2 = QuestionCategory.create!(question_id: q1.id, category_id: c2.id)
qc3 = QuestionCategory.create!(question_id: q2.id, category_id: c2.id)
qc4 = QuestionCategory.create!(question_id: q3.id, category_id: c2.id)
qc5 = QuestionCategory.create!(question_id: q5.id, category_id: c3.id)
qc6 = QuestionCategory.create!(question_id: q6.id, category_id: c3.id)
qc7 = QuestionCategory.create!(question_id: q7.id, category_id: c3.id)
qc8 = QuestionCategory.create!(question_id: q4.id, category_id: c1.id)

############### SEEN_QUESTIONS ###############
sq1 = SeenQuestion.create!(user_id: annie.id, question_id: q1.id, skipped: false)
sq2 = SeenQuestion.create!(user_id: victoria.id, question_id: q1.id, skipped: true)
sq3 = SeenQuestion.create!(user_id: sylwia.id, question_id: q2.id, skipped: false)



# "If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?"
# "Do you have a secret hunch about how you will die?"
# "Name three things you and your partner appear to have in common."
# "For what in your life do you feel most grateful?"
# "If you could change anything about the way you were raised, what would it be?"
# "Take four minutes and tell your partner your life story in as much detail as possible."
# "If you could wake up tomorrow having gained any one quality or ability, what would it be?"
# "If a crystal ball could tell you the truth about yourself, your life, the future, or anything else, what would you want to know?"
# "Is there something that you’ve dreamed of doing for a long time? Why haven’t you done it?"
# "What is the greatest accomplishment of your life?"
# "What do you value most in a friendship?"
# "What is your most treasured memory?"
# "What is your most terrible memory?"
# "If you knew that in one year you would die suddenly, would you change anything about the way you are now living?Why?"
# "What does friendship mean to you?"
# "What roles do love and affection play in your life?"
# "Alternate sharing something you consider a positive characteristic of your partner. Share a total of five items."
# "Alternate sharing something you consider a positive characteristic of your partner. Share a total of five items."
# "How do you feel about your relationship with your mother?"
# "Make three true 'we' statements each. For instance, 'We are both in this room feeling…'"
# "Complete this sentence: 'I wish I had someone with whom I could share…'"
# "If you were going to become a close friend with your partner, please share what would be important for him or her to know."
# "Tell your partner what you like about them; be very honest this time, saying things that you might not say to someone you’ve just met."
# "Share with your partner an embarrassing moment in your life."
# "When did you last cry in front of another person? By yourself?"
# "Tell your partner something that you like about them [already]."
# "What, if anything, is too serious to be joked about?"
# "If you were to die this evening with no opportunity to communicate with anyone, what would you most regret not having told someone? Why haven’t you told them yet?"
# "Your house, containing everything you own, catches fire. After saving your loved ones and pets, you have time to safely make a final dash to save any one item. What would it be? Why?"
# "Of all the people in your family, whose death would you find most disturbing? Why?"
# "Share a personal problem and ask your partner’s advice on how he or she might handle it. Also, ask your partner to reflect back to you how you seem to be feeling about the problem you have chosen."