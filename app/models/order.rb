class Order < ActiveRecord::Base
  attr_accessible :status
  validates :status, presence: true 
  
  has_many :order_lines, :dependent => :destroy
  belongs_to :user
end
