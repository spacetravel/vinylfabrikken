class Page < ActiveRecord::Base
  attr_accessible :body, :ingress, :title
  
  validates :title, presence: true
  validates :body, presence: true
end
