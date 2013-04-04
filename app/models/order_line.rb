class OrderLine < ActiveRecord::Base
  attr_accessible :quantity, :body
  
  belongs_to :order
  has_one :product
end
