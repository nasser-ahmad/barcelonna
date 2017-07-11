class SkillsController < ApplicationController
	
	def index
		
	end

	def new
		@player = Player.find(params[:player_id])
		@skill = @player.skills.new		
		@player_id = @player.id
	end

	def create
		@player = Player.find(params[:player_id])

		@skill = @player.skills.new(require_params)
		if @skill.save
			flash[:success] = "Skill added successfuly!!"
			redirect_to player_path(@player)
		else
			render :new
		end
	end


	private 
		def require_params
			params.require(:skill).permit(:name, :description )
		end	

end