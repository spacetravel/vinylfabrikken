class Side < ActiveRecord::Base
   attr_accessible :side_num, :gravering_id

   has_many :tracks
   belongs_to :gravering
end
