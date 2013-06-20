# == Schema Information
#
# Table name: prices
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  desc              :text
#  price             :decimal(8, 2)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  keyword1          :string(255)
#  keyword2          :string(255)
#  price_category_id :integer
#  keyword3          :string(255)
#

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
