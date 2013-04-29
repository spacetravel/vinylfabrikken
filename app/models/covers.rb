# == Schema Information
#
# Table name: covers
#
#  id                :integer          not null, primary key
#  inner_sleeve_type :string(255)
#  sleeve_type       :string(255)
#  order_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  thickness         :string(255)
#

class Covers < ActiveRecord::Base
  attr_accessible :inner_sleeve_type, :sleeve_type, :thickness
  belongs_to :order
end
