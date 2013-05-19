class CartsController < InheritedResources::Base


	before_filter :only => :show
	
	def show
		@cart = current_cart
	rescue ActiveRecord::RecordNotFound
		logger.error "Handlekurven finnes ikke"
		redirect_to root_url, notice: "Handlekurven finnes ikke"
	else
		respond_to do |format|
			format.html
			format.json { render json: @cart}
		end
	end


	def destroy
	    @cart = current_cart
	    @cart.destroy
	    session[:cart_id] = nil

	    respond_to do |format|
	      format.html { redirect_to :action => 'show', notice: "Handlekurven er tom" }
		  format.json { head :ok }
		end
	end

	def checkout
		@delivery_info = DeliveryInfo.new

		@delivery_info.first_name = current_user.first_name
		@delivery_info.last_name = current_user.last_name
		@delivery_info.address1 = current_user.address1
		@delivery_info.address2 = current_user.address2
		@delivery_info.zipcode = current_user.zipcode
		@delivery_info.city = current_user.city
		@delivery_info.country = current_user.country_code

		@payment_methods = PaymentMethod.select("title").all
	end
end
