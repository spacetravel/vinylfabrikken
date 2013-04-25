class Covers < ActiveRecord::Base
  attr_accessible :inner_sleeve_type, :sleeve_type, :thickness
  belongs_to :order
end