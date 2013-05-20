# == Schema Information
#
# Table name: invoices
#
#  id               :integer          not null, primary key
#  invoice_number   :string(255)
#  invoice_date     :datetime
#  invoice_deadline :datetime
#  total_sum        :decimal(, )
#  status           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :orders
  has_one :delivery_info
  
end