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

require 'test_helper'

class PressingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
