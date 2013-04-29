# == Schema Information
#
# Table name: info_texts
#
#  id         :integer          not null, primary key
#  keyword    :string(255)
#  desc       :text
#  short_desc :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InfoTextTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
