class UserCompetencesController < ApplicationController
	before_action :set_user
	def create
		@user_competence =UserCompetence.new(usercompetence_params)
		@user_competence.user = @user
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

	def usercompetence_params
		params.require(:user_competence).permit(:competence_id)
	end

end