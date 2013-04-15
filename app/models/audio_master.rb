# == Schema Information
#
# Table name: audio_masters
#
#  id              :integer          not null, primary key
#  sample_rate     :string(255)
#  resolution      :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order_id        :integer
#  album_medium_id :integer
#

class AudioMaster < ActiveRecord::Base
   attr_accessible :sample_rate, :resolution, :album_medium, :album_medium_attributes, :album_medium_id

   belongs_to :order
   belongs_to :album_medium, :dependent => :destroy

end
