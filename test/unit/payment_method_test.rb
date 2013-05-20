# == Schema Information
#
# Table name: payment_methods
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  desc       :text
#

require 'test_helper'

class PaymentMethodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
