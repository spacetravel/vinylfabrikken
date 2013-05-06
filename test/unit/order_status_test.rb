# == Schema Information
#
# Table name: order_statuses
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  color       :string(255)
#  owner       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  order_id    :integer
#

require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
