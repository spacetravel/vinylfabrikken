class Track < ActiveRecord::Base
   attr_accessible :name, :duration_mins, :duration_secs, :track_num, :side_id

   belongs_to :side

end