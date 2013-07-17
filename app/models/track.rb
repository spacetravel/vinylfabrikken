class Track < ActiveRecord::Base
   attr_accessible :name, :duration_mins, :duration_secs, :track_num, :side_id, :file_url

   belongs_to :side

   before_create :default_name

   def default_name
     self.name ||= File.basename(self.file_url, '.*').titleize if self.file_url
   end
end