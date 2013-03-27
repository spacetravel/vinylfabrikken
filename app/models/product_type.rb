class ProductType < ActiveRecord::Base
  attr_accessible :desc, :name
  
  validates :name, presence: true
  
  has_many :products
end
