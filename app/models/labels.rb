# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Labels < ActiveRecord::Base
  attr_accessible :type

  belongs_to :order
end
