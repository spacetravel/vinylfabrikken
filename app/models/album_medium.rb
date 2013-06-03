# == Schema Information
#
# Table name: album_media
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string(255)
#  address     :string(255)
#  description :text
#

class AlbumMedium < ActiveRecord::Base
  attr_accessible :name, :address, :description
  has_many :audio_masters

  

end
