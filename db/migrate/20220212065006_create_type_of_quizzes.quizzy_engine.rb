# This migration comes from quizzy_engine (originally 20220203055745)
class CreateTypeOfQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :type_of_quizzes do |t|
      t.string :name
      t.text :description
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
