class LineItemsController < ApplicationController

	def index
		@line_items = current_cart.line_items
	end

	def create

		@cart = current_cart
		order = Order.find(params[:order_id])
		@line_item = @cart.add_order(order.id)


		respond_to do |format|
			if @line_item.save
				format.html { redirect_to @line_item.cart}
				format.json { render json: @line_item, status: :created, location: @line_item }
			else
				format.html { render action: "new" }
				format.json { render json: @line_item.errors, status: :unprocessable_entity }
			end
		end
	end

end
