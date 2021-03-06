# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  total_sum  :decimal(8, 2)
#

class Cart < ActiveRecord::Base
  attr_accessible :total_sum

  has_many :line_items, dependent: :destroy

  def add_order(order_id)
  	current_item = line_items.find_by_order_id(order_id)
  	if current_item.nil?
  		current_item = line_items.build(order_id: order_id)
  	end
  	current_item
  end
end
