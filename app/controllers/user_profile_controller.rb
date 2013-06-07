class UserProfileController < ApplicationController

	def show

		if params[:employee_view] == 1 
			@user = User.find(params[:id])
		else
			@user = current_user
		end

	end

	def orders
		if params[:employee_view] == 1 
			@user = User.find(params[:id])
		else
			@user = current_user
		end

	    if current_user.nil?
	      logger.debug "hvilken bestilling? " + session[:current_order_id].to_s
	      @orders = Order.find_all_by_id(session[:current_order_id])
	    else
	      @orders = current_user.orders.reverse
	    end

	    respond_to do |format|
	      format.html # index.html.erb
	    end
	end
end
