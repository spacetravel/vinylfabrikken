# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean
#  first_name             :string(255)
#  last_name              :string(255)
#  phone                  :string(255)
#  address1               :string(255)
#  address2               :string(255)
#  country_code           :string(255)
#  is_editor              :boolean
#  profile_image          :string(255)
#  zipcode                :string(255)
#  city                   :string(255)
#  faktura_avtale         :boolean
#  employee               :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :send_welcome_email

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :first_name, :last_name, :phone, :address1, :address2, :city, :zipcode, :country_code, :faktura_avtale, :employee
  # attr_accessible :title, :body

  has_many :orders
  has_one :delivery_info
  has_many :invoices

  def after_sign_in_path_for(resource_or_scope)
   super
    unless session[:current_order_id].nil?
      order = Order.find(session[:current_order_id])
      order.user_id = current_user.id
      session[:current_order_id] = nil
    end
  end
  
  def send_welcome_email
  	UserMailer.welcome_email(self).deliver  	
  end

end
