class DeliveryInfosController < ApplicationController

	def new
		@delivery_info = DeliveryInfo.new
	end

	def create

		@delivery_info = DeliveryInfo.create(params[:delivery_info])


		@invoice = Invoice.new

		@invoice.user_id = current_user.id
		@invoice.invoice_number = 1234
		@invoice.invoice_date = Time.now
		@invoice.total_sum = 4500
		@invoice.status = 2

		@invoice.save!

		@cart.line_items.each do |line_item|
			line_item.order.invoice_id = @invoice.id
			line_item.order.save!
		end

		@cart.line_items.delete_all

		# save deliveryinfo to user and redirect to NEW INVOICE

	
		respond_to do |format|
			if @delivery_info.save!
				current_user.delivery_info = @delivery_info	
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
		
		@delivery_info.user_id = current_user.id

		respond_to do |format|
			if @delivery_info.save
				format.html { redirect_to new_invoice_path }
				format.js
				format.json { render json: new_invoice_path , status: :created, location: new_invoice_path  }
			else
				format.html { render action: "new" }
				format.json { render json: @line_item.errors, status: :unprocessable_entity }
			end
		end
	end
end
