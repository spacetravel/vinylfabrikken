# == Schema Information
#
# Table name: audio_masters
#
#  id              :integer          not null, primary key
#  sample_rate     :string(255)
#  resolution      :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  album_medium_id :integer
#

class AudioMaster < ActiveRecord::Base
   attr_accessible :sample_rate, :resolution

   belongs_to :order
   has_one :album_medium, :dependent => :destroy
   accepts_nested_attributes_for :album_medium

end
