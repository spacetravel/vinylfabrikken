# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  label_type :string(255)
#

class Labels < ActiveRecord::Base
  attr_accessible :label_type, :quantity

  belongs_to :order
end
