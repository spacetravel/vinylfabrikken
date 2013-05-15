class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :render_cart
  before_filter :set_controller_and_action_names


  def authenticate_admin_user!
   redirect_to new_user_session_path unless current_user.try(:admin?) 
  end

  def render_cart
  	@cart = current_cart
  end
  
  def set_controller_and_action_names
    @current_controller = controller_name
    @current_action     = action_name
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
