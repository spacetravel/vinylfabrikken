# == Schema Information
#
# Table name: order_lines
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#  quantity   :integer
#  status     :integer          default(0)
#

class OrderLine < ActiveRecord::Base
  attr_accessible :quantity, :body
  
  belongs_to :order
  has_one :product
end
