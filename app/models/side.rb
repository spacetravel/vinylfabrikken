class Side < ActiveRecord::Base
   attr_accessible :side_num, :gravering_id

 
   has_many :tracks
   belongs_to :gravering

   accepts_nested_attributes_for :tracks, :reject_if => lambda { |a| a[:content].blank? }
end