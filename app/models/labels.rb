# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  label_type :string(255)
#  quantity   :integer
#  comments   :text
#

class Labels < ActiveRecord::Base
  attr_accessible :label_type, :quantity, :comments

  belongs_to :order
end
