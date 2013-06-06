class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :render_cart
  before_filter :set_controller_and_action_names

 


  def authenticate_admin_user!
   redirect_to new_user_session_path unless current_user.try(:admin?) 
  end

  def after_sign_in_path_for(resource)

   unless session[:current_order_id].nil?
       @order = Order.find(session[:current_order_id])
       @order.user_id = current_user.id
       @order.save!
       session[:current_order_id] = nil
       return orders_path
   else

      if current_cart.line_items.any?

        current_cart.line_items.each do |line_item|
          @order = Order.find(line_item.order_id)
          
          @order.user_id = current_user.id
          @order.save!
        end
        session[:current_order_id] = nil
        return '/kasse/'
      else
        return root_url
      end 
    end
  end

  def render_cart
  	@cart = current_cart
  end
  
  def set_controller_and_action_names
    @current_controller = controller_name
    @current_action     = action_name
  end
  


	  def current_cart
	  	Cart.find(session[:cart_id])
	  rescue ActiveRecord::RecordNotFound
	  	cart = Cart.create
	  	session[:cart_id] = cart.id
	  	cart
	  end



end
