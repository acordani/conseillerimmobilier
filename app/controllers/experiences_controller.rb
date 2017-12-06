class ExperiencesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show]
	before_action :set_user
	before_action :set_experience, only: [:show, :edit , :update, :destroy]

	def index
		@experiences = Experience.all
	end

	def show
		@experience = Experience.find(params[:id])
	end


	def new
		@experience = @user.experiences.build
		
	end

	def create
		# @user = current_user
		@experience = Experience.new(experience_params)
		@experience.user = @user
		# @experience.user_id = current_user.id
		
			if @experience.save
			
				redirect_to user_path(@user)
				
			
			else
      		
        		render :new
        		
        	end
		
	end

	def edit
		

	end

	def update
		@user = current_user
		@experience.update(experience_params)
		redirect_to user_path(@user)
	end

	def destroy
		@experience.destroy
		redirect_to user_path(@user)
	end


	private

	def experience_params
  		params.require(:experience).permit(:title, :company, :city, :currently_work, :logo, :description, :start_year, :end_year, :end_month, :start_month)
	end

	def set_user
		@user = User.find(params[:user_id])
	end

	def set_experience
		@experience = Experience.find(params[:id])
	end


end




	

	

	


	

	


