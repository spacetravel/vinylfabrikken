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

class PaymentMethod < ActiveRecord::Base
  attr_accessible :title, :desc

  has_many :delivery_infos

end
