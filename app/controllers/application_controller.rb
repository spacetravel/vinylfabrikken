class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def authenticate_admin_user!
   redirect_to new_user_session_path unless current_user.try(:admin?) 
  end
end
