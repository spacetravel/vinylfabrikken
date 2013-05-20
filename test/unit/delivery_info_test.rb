# == Schema Information
#
# Table name: delivery_infos
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  first_name        :string(255)
#  last_name         :string(255)
#  address1          :string(255)
#  address2          :string(255)
#  zipcode           :string(255)
#  city              :string(255)
#  country           :string(255)
#  comments          :text
#  payment_type      :string(255)
#  payment_comment   :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  payment_method_id :integer
#  invoice_id        :integer
#

require 'test_helper'

class DeliveryInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
