class Package < ActiveRecord::Base
  attr_accessible :quantity
  has_one :order

end
