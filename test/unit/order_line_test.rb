# == Schema Information
#
# Table name: order_lines
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#  quantity   :integer
#  status     :integer          default(0)
#

require 'test_helper'

class OrderLineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
