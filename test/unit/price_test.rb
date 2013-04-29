# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
