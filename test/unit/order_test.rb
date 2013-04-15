# == Schema Information
#
# Table name: orders
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  status             :integer          default(0)
#  user_id            :integer
#  artwork_medium_id  :integer
#  payment_type       :string(255)
#  order_number       :string(255)
#  order_date         :datetime
#  title              :string(255)
#  artist             :string(255)
#  delivery_method_id :integer
#  number_of_records  :integer
#  order_status_id    :integer
#  comments           :text
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
