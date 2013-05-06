# == Schema Information
#
# Table name: plugs
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  body       :text
#  link       :string(255)
#

require 'test_helper'

class PlugTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
