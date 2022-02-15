# This migration comes from quizzy_engine (originally 20220203180535)
class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name

      t.timestamps
    end
  end
end
