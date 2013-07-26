class Side < ActiveRecord::Base
   attr_accessible :side_num, :gravering_id, :tracks_attributes, :tracks

 
   has_many :tracks
   belongs_to :gravering

   accepts_nested_attributes_for :tracks
end