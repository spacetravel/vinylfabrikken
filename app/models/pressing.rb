class Pressing < ActiveRecord::Base
  attr_accessible :color, :weight, :repress, :holesize
  belongs_to :order
end