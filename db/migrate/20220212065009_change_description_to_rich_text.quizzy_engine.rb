# This migration comes from quizzy_engine (originally 20220203122341)
class ChangeDescriptionToRichText < ActiveRecord::Migration[6.1]
  def change
    change_column :type_of_quizzes, :description, :rich_text
    change_column :quizzes, :description, :rich_text
  end
end
