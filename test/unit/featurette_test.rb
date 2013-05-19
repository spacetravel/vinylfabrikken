# == Schema Information
#
# Table name: featurettes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  subtitle   :string(255)
#  text       :text
#  link       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FeaturetteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
