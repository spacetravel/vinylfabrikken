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
#  comments          :text
#

require 'test_helper'

class CoversTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
