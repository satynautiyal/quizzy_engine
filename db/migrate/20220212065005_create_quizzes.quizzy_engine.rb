# This migration comes from quizzy_engine (originally 20220203055144)
class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
