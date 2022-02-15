# This migration comes from quizzy_engine (originally 20220203180637)
class ChangingReferencesOfTypeOfQuiz < ActiveRecord::Migration[6.1]
  def change
    remove_column :type_of_quizzes, :name
    add_reference :type_of_quizzes, :type, foreign_key: true
  end
end
