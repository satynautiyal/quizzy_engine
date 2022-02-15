# This migration comes from quizzy_engine (originally 20220208060653)
class AddColumnsToNotificationQuizTable < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzes, :active, :boolean
    add_column :notifications, :readed, :boolean
  end
end
