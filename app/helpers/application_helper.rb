module ApplicationHelper

	def get_cart
		Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		false
	end
end
