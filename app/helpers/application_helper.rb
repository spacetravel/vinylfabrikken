module ApplicationHelper

	def get_cart
		Cart.find(session[:cart_id])
	end
end
