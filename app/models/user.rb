class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :first_name, :last_name, :age
  # def complete_quiz
  # 	if movie = ""
  # 		complete = false
  # 	else
  # 		complete = true
  # 	end
  # end

  def full_name
  	first_name + " " + last_name
  end
end
