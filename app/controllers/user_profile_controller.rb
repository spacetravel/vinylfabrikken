class UserProfileController < ApplicationController

	def show

		if params[:employee_view] == 1 && current_user.employee 
			@user = User.find(params[:id])
		else
			@user = current_user
		end

	end

	def orders
		if params[:employee_view] == 1 && current_user.employee
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

	def transactions
		if params[:employee_view] == 1 && current_user.employee
			@user = User.find(params[:id])
		else
			@user = current_user
		end

	    if current_user.nil?
	      logger.debug "hvilken bestilling? " + session[:current_order_id].to_s
	      @invoices = Invoice.all
		 else
	      @invoices = Invoice.all
#	      @orders = current_user.orders.reverse
	    end

	    respond_to do |format|
	      format.html # index.html.erb
	    end
	end
end
