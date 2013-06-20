# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  cart_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  invoice_id :integer
#

class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :order_id, :order, :invoice_id

  belongs_to :cart
  belongs_to :order
  belongs_to :invoice

end
