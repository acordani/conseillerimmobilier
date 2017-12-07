class CompetencesController < ApplicationController
	before_action :set_user

	

	def create
		# @user = current_user
		@competence = Competence.new(competence_params)
		@competence.user = @user
		# @competence.user_id = current_user.id
		
			if @competence.save
			
				redirect_to user_path(@user)
				
			
			else
      		
        		render :new
        		
        	end
		
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

	def competence_params
		params.require(:competence).permit(:name)
	end

end
