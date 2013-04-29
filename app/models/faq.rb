# == Schema Information
#
# Table name: faqs
#
#  id              :integer          not null, primary key
#  question        :text
#  answer          :text
#  published       :boolean
#  faq_category_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Faq < ActiveRecord::Base
  attr_accessible :question, :answer, :category, :published, :faq_category_id
 
  belongs_to :faq_category
end
