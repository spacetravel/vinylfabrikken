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

require 'test_helper'

class LabelsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
