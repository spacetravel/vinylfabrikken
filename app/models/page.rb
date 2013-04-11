# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ingress    :text
#  body       :text
#

class Page < ActiveRecord::Base
  attr_accessible :body, :ingress, :title
  
  validates :title, presence: true
  validates :body, presence: true
end
