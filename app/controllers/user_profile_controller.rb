class UserProfileController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def orders
		@user = User.find(params[:id])

	    if current_user.nil?
	      logger.debug "hvilken bestilling? " + session[:current_order_id].to_s
	      @orders = Order.find_all_by_id(session[:current_order_id])
	    else
	      @orders = current_user.orders.reverse
	    end
	end
end
