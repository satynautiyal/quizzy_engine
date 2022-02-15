# This migration comes from quizzy_engine (originally 20220203114152)
class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string
  end
end
