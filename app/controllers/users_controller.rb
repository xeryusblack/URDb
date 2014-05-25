class UsersController < ApplicationController 
	before_action :authenticate_user!

	def index
		if current_user.email.include? 'admin@admin.com'
			@users = User.all
		else
			redirect_to root_path
		end
	end

	def new
		@user = current_user
	end

	def update
		@user = current_user
		@user.first_name = params[:user][:first_name]
		@user.last_name = params[:user][:last_name]
		@user.age = params[:user][:age].to_i
		@user.complete = false
		
		@user.save!
		render 'question1'
	end

	def destroy
  		@user = User.find(params[:id])
  		@user.destroy
  		redirect_to :action => :index
  	end

	def save
		@user = User.new
		@user.save!
		redirect_to :action => :index
	end

	def question1
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def comedy
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def action
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def sci_fi
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def drama
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def romance
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def comedy1
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def comedy2
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def action1
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def action2
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def romance1
		@user = current_user
		@user.complete = false
		@user.save!
	end

	def ending1
		@user = current_user
		@user.movie = "The Other Woman"
		@user.complete = true
		@user.save!
	end

	def ending2
		@user = current_user
		@user.movie = "Neighbors"
		@user.complete = true
		@user.save!
	end

	def ending3
		@user = current_user
		@user.movie = "Godzilla"
		@user.complete = true
		@user.save!
	end

	def ending4
		@user = current_user
		@user.movie = "Amazing Spiderman 2"
		@user.complete = true
		@user.save!
	end

	def ending5
		@user = current_user
		@user.movie = "Xmen: Days of Future Past"
		@user.complete = true
		@user.save!
	end

	def ending6
		@user = current_user
		@user.movie = "The Fault in Our Stars"
		@user.complete = true
		@user.save!
	end

	def ending7
		@user = current_user
		@user.movie = "Maleficent"
		@user.complete = true
		@user.save!
	end

	def ending8
		@user = current_user
		@user.movie = "Million Dollar Arm"
		@user.complete = true
		@user.save!
	end

	def ending9
		@user = current_user
		@user.movie = "Blended"
		@user.complete = true
		@user.save!
	end

end




