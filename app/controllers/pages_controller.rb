class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	
  	@users = User.where( is_realestate: true)
  	@sales = Sale.where( phase: "A vendre")
  	@sold = Sale.where( phase: "Vendu")
  end
end
