class DeliveryInfosController < ApplicationController

	def new
		@delivery_info = DeliveryInfo.new
	end

	def create
		@delivery_info = DeliveryInfo.create(params[:delivery_info])
		@delivery_info.user_id = current_user.id

		respond_to do |format|
			if @delivery_info.save
				format.html { redirect_to '/kvittering/'+@delivery_info.id.to_s }
				format.js
				format.json { render json: '/kvittering/', status: :created, location: '/kvittering/' }
			else
				format.html { render action: "new" }
				format.json { render json: @line_item.errors, status: :unprocessable_entity }
			end
		end
	end


	def update
		@delivery_info = DeliveryInfo.find(params[:id])
		
		respond_to do |format|
			if @delivery_info.save
				format.html { redirect_to '/kvittering/'+@delivery_info.id.to_s }
				format.js
				format.json { render json: '/kvittering/', status: :created, location: '/kvittering/' }
			else
				format.html { render action: "new" }
				format.json { render json: @line_item.errors, status: :unprocessable_entity }
			end
		end
	end
end
