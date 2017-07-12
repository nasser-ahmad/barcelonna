class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "User added successfully.."
			redirect_to players_path
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		if @user.update(user_params)
			flash[:success] = "User updated successfully.."
			redirect_to players_path
		else
			render :edit
		end
	end

	private 

		def user_params
			params.require(:user).permit(:username, :password , :password_confirmation , :email)
		end


end