# == Schema Information
#
# Table name: cover_media
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string(255)
#  address     :string(255)
#  description :text
#

class CoverMedium < ActiveRecord::Base
	attr_accessible :name, :address, :description
	belongs_to :order
end
