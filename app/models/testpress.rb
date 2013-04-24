class Testpress < ActiveRecord::Base
   attr_accessible :quantity

  belongs_to :order
end
