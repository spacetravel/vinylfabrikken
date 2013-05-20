# == Schema Information
#
# Table name: delivery_infos
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  first_name      :string(255)
#  last_name       :string(255)
#  address1        :string(255)
#  address2        :string(255)
#  zipcode         :string(255)
#  city            :string(255)
#  country         :string(255)
#  comments        :text
#  payment_type    :string(255)
#  payment_comment :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class DeliveryInfo < ActiveRecord::Base
  attr_accessible :user_id, :first_name, :last_name, :address1, :address2, :zipcode, :city, :country, :comments, :payment_type, :payment_comment, :payment_method_id

  belongs_to :user

  belongs_to :payment_method



end
