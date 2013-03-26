class Product < ActiveRecord::Base
  attr_accessible :desc, :name, :price, :type_id
end
