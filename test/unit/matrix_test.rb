# == Schema Information
#
# Table name: matrices
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#  quantity   :integer
#  comments   :text
#

require 'test_helper'

class MatrixTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
