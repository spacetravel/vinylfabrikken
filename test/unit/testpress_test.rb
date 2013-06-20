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

require 'test_helper'

class TestpressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
