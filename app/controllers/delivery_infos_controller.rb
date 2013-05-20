class DeliveryInfosController < ApplicationController

	def new
		@delivery_info = DeliveryInfo.new
	end

	def create
		@delivery_info = DeliveryInfo.create(params[:delivery_info])
		@delivery_info.user_id = current_user.id


		@invoice = Invoice.new
	
		@invoice.invoice_number = 1234
		@invoice.invoice_date = Time.now
		@invoice.invoice_deadline = Time.now + 3.weeks
		@invoice.total_sum = 4500
		@invoice.status = 2
	

		@invoice.save!

		@cart.line_items.each do |line_item|
			line_item.order.invoice_id = @invoice.id
			line_item.order.save!
		end

		@delivery_info.invoice_id = @invoice.id

	
		respond_to do |format|
			if @delivery_info.save
				format.html { redirect_to '/kvittering/'+@invoice.id.to_s }
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
		
		@invoice = Invoice.new
	
		@invoice.invoice_number = 1234
		@invoice.invoice_date = Time.now
		@invoice.invoice_deadline = Time.now + 3.weeks
		@invoice.total_sum = 4500
		@invoice.status = 2
	
		@invoice.save!

		@cart.line_items.each do |line_item|
			line_item.order.invoice_id = @invoice.id
			logger.debug "----"
			logger.debug "----"
			logger.debug @invoice.id
			logger.debug "----"
			line_item.order.save!
		end

		@cart.line_items.delete_all


		@delivery_info.invoice_id = @invoice.id

		respond_to do |format|
			if @delivery_info.save
				format.html { redirect_to '/kvittering/'+@invoice.id.to_s }
				format.js
				format.json { render json: '/kvittering/', status: :created, location: '/kvittering/' }
			else
				format.html { render action: "new" }
				format.json { render json: @line_item.errors, status: :unprocessable_entity }
			end
		end
	end
end
