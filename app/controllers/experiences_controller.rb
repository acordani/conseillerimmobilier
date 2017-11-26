class ExperiencesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show]

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
		@experience.user_id = current_user.id
		
			if @experience.save
			
				redirect_to experience_path(@experience)
				
			
			else
      		
        		render :new
        		
        	end
		
	end

	private

	def experience_params
  		params.require(:experience).permit(:title, :company, :currently_work, :logo, :description, :starts_at, :ends_at)
	end

	def set_experience
		@experience = Experience.find(params[:id])
	end


end




	

	

	


	

	


