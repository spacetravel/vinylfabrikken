class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :order_id, :order

  belongs_to :cart
  belongs_to :order
end
