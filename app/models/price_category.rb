class PriceCategory < ActiveRecord::Base
   attr_accessible :name, :keyword, :desc

   has_many :prices
end