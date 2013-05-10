class Cart < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :line_items, dependent: :destroy

  def add_order(order_id)
  	current_item = line_items.find_by_order_id(order_id)
  	if current_item.nil?
  		current_item = line_items.build(order_id: order_id)
  	end
  	current_item
  end

end