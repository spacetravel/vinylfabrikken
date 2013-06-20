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
#  user_id          :integer
#

class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :line_items
  belongs_to :user
  
end
