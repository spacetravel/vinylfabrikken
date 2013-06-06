# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean
#  first_name             :string(255)
#  last_name              :string(255)
#  phone                  :string(255)
#  address1               :string(255)
#  address2               :string(255)
#  country_code           :string(255)
#  is_editor              :boolean
#  profile_image          :string(255)
#  zipcode                :string(255)
#  city                   :string(255)
#  faktura_avtale         :boolean
#  employee               :boolean          default(FALSE)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
