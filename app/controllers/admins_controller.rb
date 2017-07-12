class AdminsController < ApplicationController

	def new
		@admin = Admin.new
	end

	def create
		# binding.pry
		@admin = Admin.new(require_params)
		if @admin.save
			flash[:success] = "admin added successfuly"
			redirect_to players_path
		else
			render 'new'
		end
	end

	private

		def require_params
			params.require(:admin).permit(:username, :password, :password_confirmation, :email)
		end

end