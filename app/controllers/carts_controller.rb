class CartsController < InheritedResources::Base


	before_filter :only => :show
	
	def show
		@cart = current_cart
	rescue ActiveRecord::RecordNotFound
		logger.error "Handlekurven finnes ikke"
		redirect_to root_url, notice: "Handlekurven finnes ikke"
	else

		total = 0	
		@cart.line_items.each do |line_item|
			total += line_item.order.total_price
		end

		@cart.total_sum = total
		@cart.save!
		
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

	def kvittering

#		current_cart.line_items.delete_all

		@invoice = Invoice.find(params[:id])
	
		respond_to do |format|
		  format.html
    	  format.pdf {
	        render :pdf => "kvittering", :encoding => 'utf-8', :header => { :font_size => '8', :right => '[page] of [toPage]' }, :footer => {:font_size => '8', :right => 'Generert av vinylfabrikken.no' }
      	  }

		end
	end

	def checkout


    	unless current_user.nil?

   			if current_user.delivery_info.nil?

	    		@delivery_info = DeliveryInfo.new
	    		
				@delivery_info.first_name = current_user.first_name
				@delivery_info.last_name = current_user.last_name
				@delivery_info.address1 = current_user.address1
				@delivery_info.address2 = current_user.address2
				@delivery_info.zipcode = current_user.zipcode
				@delivery_info.city = current_user.city
				@delivery_info.country = current_user.country_code
				@delivery_info.save!

			else
				@delivery_info = current_user.delivery_info
				@delivery_info.save!
			end
		end
	end
end
