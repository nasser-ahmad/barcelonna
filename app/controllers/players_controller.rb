class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(require_params)

		if @player.save
			flash[:success] = @player.name.upcase + " added successfully!!"
			redirect_to  players_path
		else
			render :new
		end
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])

		if @player.update(require_params)
			flash[:success] = "Player updated successfully!!"
			redirect_to player_path(@player)
		else
			render :edit
		end
	end


	private 
		def require_params
			params.require(:player).permit(:name, :age , :description)
		end

end