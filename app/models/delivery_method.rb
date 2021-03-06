# == Schema Information
#
# Table name: delivery_methods
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  order_id    :integer
#

class DeliveryMethod < ActiveRecord::Base
   attr_accessible :name, :description
   belongs_to :order
end
