# == Schema Information
#
# Table name: testpresses
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Testpress < ActiveRecord::Base
   attr_accessible :quantity

  belongs_to :order
end
