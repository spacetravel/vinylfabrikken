class InvoicesController < ApplicationController

	def new

		@cart = current_cart

		@invoice = Invoice.new
	
		@invoice.invoice_date = Time.now
		@invoice.invoice_deadline = Time.now + 3.weeks
		@invoice.total_sum = @cart.total_sum
		@invoice.status = 2
		@invoice.user_id = current_user.id

		@invoice.save!

		orderstatus = OrderStatus.find_by_keyword('venterproduksjon')

		@cart.line_items.each do |line_item|
		
			line_item.order.order_status_id = orderstatus.id
			line_item.order.save!
			line_item.invoice_id = @invoice.id
			line_item.cart_id = nil
			line_item.save!
		end

		@invoice.invoice_number = "OVF"+@invoice.id.to_s
		@invoice.save!

		@cart.delete

		redirect_to '/kvittering/'+@invoice.id.to_s

	end
end
