class ApplicationController < ActionController::Base
  protect_from_forgery


  def authenticate_admin_user!
   redirect_to new_user_session_path unless current_user.try(:admin?) 
  end

  private 

	  def current_cart
	  	Cart.find(session[:cart_id])
	  rescue ActiveRecord::RecordNotFound
	  	cart = Cart.create
	  	session[:cart_id] = cart.id
	  	cart
	  end
end
