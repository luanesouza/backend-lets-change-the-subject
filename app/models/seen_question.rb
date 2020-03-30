class SeenQuestion < ApplicationRecord
  after_initialize :init

  belongs_to :user
  belongs_to :question

  validates_presence_of :user_id, :question_id

  def init
    self.skipped = false if self.skipped.nil?          #will set the default value only if it's nil
  end

end
