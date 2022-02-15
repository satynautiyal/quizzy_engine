# This migration comes from quizzy_engine (originally 20220208132201)
class CreateAllowStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :allow_students do |t|
      t.references :user, null: false, foreign_key: true
      t.references :type_of_quiz, null: false, foreign_key: true
      t.boolean :block

      t.timestamps
    end
  end
end
