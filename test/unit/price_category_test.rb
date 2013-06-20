# == Schema Information
#
# Table name: price_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  keyword    :string(255)
#  desc       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PriceCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
