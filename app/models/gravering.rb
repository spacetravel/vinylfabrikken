class Gravering < ActiveRecord::Base
   attr_accessible :side_a_rpm, :side_b_rpm
   
   belongs_to :order
end
