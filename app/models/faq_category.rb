class FaqCategory < ActiveRecord::Base
  attr_accessible :title, :desc
  has_many :faqs
end
