# This migration comes from quizzy_engine (originally 20220203055858)
class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :options
      t.string :answer
      t.references :type_of_quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
