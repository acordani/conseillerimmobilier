class SalesController < ApplicationController

	def index 
		@sales = Sale.all
	end

	def new
		@sale = Sale.new
	end

	def show
		@sale = Sale.find(params[:id])
	end

	def create
		
		@sale = Sale.new(sale_params)
		@sale.user_id = current_user.id
			if @sale.save
				redirect_to sale_path(@sale)
			else
				render :new
			end
	end


	def sale_params
		params.require(:sale).permit(
			:title,
			:price, 
			:description, 
			:active, 
			:bedroom, 
			:living, 
			:class_energy,  
			:zip_code, 
			:number_class_energy, 
			:gaz_serre, 
			:number_gaz_serre, 
			:city, 
			:taxe,
  			:exposition,
  			:heating,
  			:phase,
  			:user_id,
  			photos: []
			)
	end

	def set_sale
		@sale = Sale.find(params[:id])
	end



end
