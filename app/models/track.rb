class Track < ActiveRecord::Base
   attr_accessible :name, :duration, :side_id

   belongs_to :Side
end
