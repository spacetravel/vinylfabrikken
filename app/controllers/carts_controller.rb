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
	
	end
end