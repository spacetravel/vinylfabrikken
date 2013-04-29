# == Schema Information
#
# Table name: pressings
#
#  id         :integer          not null, primary key
#  color      :string(255)
#  weight     :integer
#  repress    :boolean
#  holesize   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#

class Pressing < ActiveRecord::Base
  attr_accessible :color, :weight, :repress, :holesize
  belongs_to :order
end
