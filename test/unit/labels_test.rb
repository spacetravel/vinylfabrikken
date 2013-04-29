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

require 'test_helper'

class LabelsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
