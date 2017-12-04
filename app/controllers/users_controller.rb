class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@experience = Experience.new

	end

end