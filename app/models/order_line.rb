class OrderLine < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :order
  has_one :product
end
