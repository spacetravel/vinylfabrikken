# == Schema Information
#
# Table name: graverings
#
#  id         :integer          not null, primary key
#  side_a_rpm :string(255)
#  side_b_rpm :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#

class Gravering < ActiveRecord::Base
   attr_accessible :side_a_rpm, :side_b_rpm, :comments
   
   belongs_to :order
end
