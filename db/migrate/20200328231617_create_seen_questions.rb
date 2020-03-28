class CreateSeenQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :seen_questions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true
      t.boolean :skipped

      t.timestamps
    end
  end
end
