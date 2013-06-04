# == Schema Information
#
# Table name: order_statuses
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  color       :string(255)
#  owner       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  order_id    :integer
#

class OrderStatus < ActiveRecord::Base
   attr_accessible :title, :description, :color, :owner, :keyword

   has_many :orders
end
