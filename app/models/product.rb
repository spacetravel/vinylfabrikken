class Product < ActiveRecord::Base
  attr_accessible :desc, :name, :price, :product_type_id
  
  validates :name, presence: true
  validates :product_type_id, presence: true
  
  belongs_to :product_type
  has_many :order_lines
end
