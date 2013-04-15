# == Schema Information
#
# Table name: audio_masters
#
#  id              :integer          not null, primary key
#  sample_rate     :string(255)
#  resolution      :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order_id        :integer
#  album_medium_id :integer
#

require 'test_helper'

class AudioMasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
