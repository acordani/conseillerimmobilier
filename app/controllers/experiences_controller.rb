class ExperiencesController < ApplicationController

	def index
		@experiences = Experience.all
	end

	def show
		@experience = Experience.find(params[:id])
	end


	def new
		@experience = Experience.new
	end

	def create
		@experience = Experience.new(experience_params)
			if @experience.save
				redirect_to experience_path(@experience)
			else
				render :new
			end
	end

	private

	def experience_params
  		params.require(:product).permit(:title, :company, :logo, :description, :starts_at, :ends_at)
	end

	def set_experience
		@experience = Experience.find(params[:id])
	end


end




	

	

	


	

	


