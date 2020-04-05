class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :spiciness
      t.string :content
      t.string :additional_link
      t.string :source

      t.timestamps
    end
  end
end
