# == Schema Information
#
# Table name: testpresses
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  comments   :text
#

class Testpress < ActiveRecord::Base
   attr_accessible :quantity, :comments

  belongs_to :order
end
