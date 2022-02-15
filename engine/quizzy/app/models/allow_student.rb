class AllowStudent < ApplicationRecord
  belongs_to :user
  belongs_to :type_of_quiz
end
