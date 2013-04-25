class Labels < ActiveRecord::Base
  attr_accessible :type

  belongs_to :order
end
