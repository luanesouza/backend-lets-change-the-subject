class User < ApplicationRecord
    has_many :seen_questions
    has_many :questions, :through => :seen_questions

    validates :username, presence: true, uniqueness: { message: "Someone has already taken this username." }
    validates :email, presence: true, uniqueness: { message: "Someone has already used this email address." }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "There's something funky with your email address!" },  length: {maximum: 75}
end
