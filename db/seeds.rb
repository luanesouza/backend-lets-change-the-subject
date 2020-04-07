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
annie = User.create!(username: "annie2020", email:"annie2020@gmail.com", password: "Annie2020")
victoria = User.create!(username: "victoria2020", email: "victoria2020@gmail.com", password: "Victoria2020")
sylwia = User.create!(username: "sylwia2020", email:"sylwia2020@gmail.com", password: "Sylwia2020")

########## SOURCE VARIABLES ######################
q36 = "36 Questions for Increasing Closeness"
q36_link = "https://ggia.berkeley.edu/practice/36_questions_for_increasing_closeness"
q_conversation_starters = "Conversation Starters World"
q_conversation_starters_link = "https://conversationstartersworld.com"


############### QUESTIONS FOR TESTING ###############
q1 = Question.create!(content: "What's your favorite cereal?", spiciness: 1, additional_link: "", source: "")
q2 = Question.create!(content: "Do you put milk or ceral first and why?", spiciness: 2, additional_link: "", source: "")
q3 = Question.create!(content: "Given the choice of anyone in the world, whom would you want as a dinner guest?", spiciness: 2, additional_link: q36_link, source: q36)
q4 = Question.create!(content: "Would you like to be famous? In what way?", spiciness: 2, additional_link: q36_link, source: q36)
q5 = Question.create!(content: "Before making a telephone call, do you ever rehearse what you are going to say? Why?", spiciness: 2, additional_link: q36_link, source: q36)
q6 = Question.create!(content: "What would constitute a 'perfect' day for you?", spiciness: 2, additional_link: q36_link, source: q36)
q7 = Question.create!(content: "When did you last sing to yourself? To someone else?", spiciness: 2, additional_link: q36_link, source: q36)

############### CATEGORIES ###############
c1 = Category.create!(name: "friends")
c2 = Category.create!(name: "coworkers")
c3 = Category.create!(name: "partner")

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


############ OTHER QUESTIONS #################
partner_36_qs = [
"If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?", 
"If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?",
"Do you have a secret hunch about how you will die?",
"Name three things you and your partner appear to have in common.",
"For what in your life do you feel most grateful?",
"If you could change anything about the way you were raised, what would it be?",
"Take four minutes and tell your partner your life story in as much detail as possible.",
"If you could wake up tomorrow having gained any one quality or ability, what would it be?",
"If a crystal ball could tell you the truth about yourself, your life, the future, or anything else, what would you want to know?",
"Is there something that you’ve dreamed of doing for a long time and why haven’t you done it?",
"What is the greatest accomplishment of your life?",
"What do you value most in a friendship?",
"What is your most treasured memory?",
"What is your most terrible memory?",
"If you knew that in one year you would die suddenly, would you change anything about the way you are now living?", 
"What does friendship mean to you?",
"What roles do love and affection play in your life?",
"Alternate sharing something you consider a positive characteristic of your partner. Share a total of five items.",
"How do you feel about your relationship with your mother?",
"If you were going to become a close friend with your partner, please share what would be important for him or her to know.",
"Tell your partner what you like about them; be very honest this time, saying things that you might not say to someone you’ve just met.",
"Share with your partner an embarrassing moment in your life.",
"When did you last cry in front of another person? By yourself?",
"What, if anything, is too serious to be joked about?",
"If you were to die this evening with no opportunity to communicate with anyone, what would you most regret not having told someone? Why haven’t you told them yet?",
"Your house, containing everything you own, catches fire. After saving your loved ones and pets, you have time to safely make a final dash to save any one item. What would it be, and why?",
"Of all the people in your family, whose death would you find most disturbing, and why?"
]


partner_36_qs.each do |q| 
    question = Question.create!(content: q, spiciness: 1, additional_link: q36_link, source: q36)
    QuestionCategory.create!(question_id: question.id, category_id: c3.id)
end 

friends_qs_sylwia = [
"What's your favorite cereal?",
"Is cereal soup? Why / why not?",
"If you were cereal, what cereal would you be and why?",
"If you had to replace your two hands with an animal, which animal would you choose and why?",
"Which two historical or literary figures would you take for a year-long trip to Mars?",
"If countries no longer existed, how would people know they belong together?",
"What did you think about me when we first met?",
"What do you think my catch phrase is?",
"What is a thing you always wanted to learn but never got around to?",
"Would you prefer watching a wonderfully-popular Hollywood biopic about yourself or really-honest documentary?",
"If there was a movie produced about you, who would you want to play you?",
"How do you relax after a tough day?",
"What do you wish people knew about you when you're in disagreement?",
"If you could be any animal, which animal would you wish to be?",
"Come up with conspiracy theory about dinosaurs.",
"What s the last show you've bindged and which character made it most interesting for you?",
"What question do you not like to be asked?",
"What is the one story you've told so many times that it lost its initial magic?",
"What makes you, you?",
"How do you best relate to others?",
"What drives you to get out of bed?",
"What holds you back from what you really want to do?",
"What makes you most appreciated?",
"How do you make people know you appreciate them?",
"What acitivities would you let go of if you had 5% less energy?",
"Where do you draw most inspiration from?",
"What would you do if you had 5% more time?",
"What is your gift that you can share with others?",
"What do you consider your obligation?",
"What is your next big goal? And how will achieving this goal change you?",
"Who are you when you are your best self?",
"What choices can you make to be your best self?",
"Do you care more about doing the right thing or doing things right?",
"What subjects make your heart beat faster?",
"What qualities do you cherish most in strangers?",
"Looking over the past week, what are you most grateful to yourself for?",
"What is the strangest compliment you've ever received?",
"Have you ever sent a text to a wrong person? What was the text about?",
"What is the kindest thing a stranger did for you?",
"What’s invisible but you wish people could see?",
"What do you think the 2020's nostalgia will be all about?",
"Do you think that if cats could uderstand tv, they'd be offended by the movie 'Cats'?",
"What's the most embarrasing thing you've ever said?",
"If you could have two of a body part, which one would you duplicate and why?",
"What would your superhero name be?",
"If you were a superhero, what would your superpower be?",
"What is legal but you wish were illigal?",
"If butterfly was not called butterfly, what would it be called?",
"If a deli sandwich were to be named after you, what would you like it to include?",
"How would our world change if dogs took over the charge?",
"How does honor manifest for you?",
"If you knew you'd die tomorrow, how would you spend your day?",
"Imagine our next elected president is a cat — what laws would they pass?",
"What do you buy too much of?",
"What is the most annoying behavior when waiting in line?",
"What would you write on a public toilet wall?",
"If you were given a public ad space in New York Times, what would you devote it to?",
"What's the most satisfying sound?",
"What's your most blissful memory that involves the sun?",
"When did you notice last year that it was spring?",
"What is one photo that totally moved you?",
"Where do you feel most at home outside of your home?",
"Which letter is most magical for you?",
"What was a pair of shoes that you wore until they completely broke?",
"How would you explain to an alien who doesn't know our culture at all what TikTok is?"
]

friends_qs_sylwia.each do |q| 
    question = Question.create!(content: q, spiciness: 1, additional_link: "", source: "")
    QuestionCategory.create!(question_id: question.id, category_id: c1.id)
end 

friends_qs_conv = [
"What would be the worst name to give a child?",
"What would be the worst “buy one get one free” sale of all time?",
"What would be the creepiest thing you could say while passing a stranger on the street?",
"What are some fun and interesting alternatives to war that countries could settle their differences with?",
"If you were arrested with no explanation, what would your friends and family assume you had done?",
"You’re a mad scientist, what scientific experiment would you run if money and ethics weren’t an issue?",
"What are some fun ways to answer everyday questions like “how’s it going” or “what do you do”?",
"If someone asked to be your apprentice and learn all that you know, what would you teach them?",
"If your five-year-old self suddenly found themselves inhabiting your current body, what would your five-year-old self do first?",
"What movie completely changes its plot when you change one letter in its title? What’s the new movie about?",
"If you were transported 400 years into the past with no clothes or anything else, how would you prove that you were from the future?",
"What fictional character is amazing in their book / show / movie, but would be insufferable if you had to deal with them in mundane everyday situations?",
"How do you think you will die?",
"Are humans better at creation or destruction?",
"What makes people believe absurd conspiracy theories?",
"What’s something terrifying that we’ve all come to accept as a fact of life?",
"If you had to sum up the whole human species in 3 words, what would those words be?",
"Is tribalism and people separating themselves into “us” and “them” groups, a learned or genetic trait? Can it be overcome? If so, how?",
"If pressing a button meant you received 5 million dollars but it also killed 5 people somewhere in the world, would you press it? What if it killed only 1 person or killed 20 people? What if the people were people you knew?",
"What is a miracle that happens every day?",
"What is the purpose of art in society?",
"What would a perfect city be like?",
"What would be different if the 9/11 terrorist attack never occurred?",
"Should governments make laws to protect people from hurting themselves?",
"What is the most uplifting thing happening in the world right now?",
"Do people have an obligation to help others or should people be responsible for helping themselves?",
"If you died today, how would you be remembered?",
"What does the ideal life look like?",
"Who do you know who is living life to the fullest?",
"If you died today, what regrets would you have about your life?",
"If you were given an envelope with the the time and date of your death inside, would you open it?",
"What is the most beneficial emotion?",
"Do people have a right to be happy or should they have to earn it?"
]

friends_qs_conv.each do |q| 
    question = Question.create!(content: q, spiciness: 1, additional_link: q_conversation_starters_link, source: q_conversation_starters)
    QuestionCategory.create!(question_id: question.id, category_id: c1.id)
end 

colleague_qs = [
    "Do you wish you had a clone?"
]
colleague_qs.each do |q| 
    question = Question.create!(content: q, spiciness: 1, additional_link: "", source: "")
    QuestionCategory.create!(question_id: question.id, category_id: c2.id)
end 