# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  ingress    :text
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class News < ActiveRecord::Base
  attr_accessible :body, :ingress, :title
  
  validates :title, presence: true
  validates :body, presence: true
end
