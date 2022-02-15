# This migration comes from quizzy_engine (originally 20220204100927)
class ChangeColumnOfQuestions < ActiveRecord::Migration[6.1]
  def change
    change_column :questions, :options, :text
  end
end
