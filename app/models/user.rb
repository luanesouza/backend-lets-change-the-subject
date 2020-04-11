class User < ApplicationRecord
    
    has_many :seen_questions, dependent: :destroy
    has_many :questions, :through => :seen_questions

    validates :username, presence: true, uniqueness: { message: "Someone has already taken this username." }
    validates :email, presence: true, uniqueness: { message: "Someone has already used this email address." }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "There's something funky with your email address!" },  length: {maximum: 75}
    validates :password, presence: true, length: { in: 8..32, message: "Your password should be between 8 and 32 characters long." }

end
