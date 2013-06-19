# == Schema Information
#
# Table name: matrices
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#  quantity   :integer
#

class Matrix < ActiveRecord::Base
   attr_accessible :title, :body, :quantity, :comments

   belongs_to :order
end
