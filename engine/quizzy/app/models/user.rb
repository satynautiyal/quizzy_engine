class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role:{
    teacher: "teacher",
    student: "student"
  }
  has_many :allow_students
  # enum role: { student: 0, admin: 1 } 

end
