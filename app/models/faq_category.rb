# == Schema Information
#
# Table name: faq_categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desc       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FaqCategory < ActiveRecord::Base
  attr_accessible :title, :desc
  has_many :faqs
end
