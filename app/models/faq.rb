class Faq < ActiveRecord::Base
  attr_accessible :question, :answer, :category, :published, :faq_category_id
 
  belongs_to :faq_category
end
