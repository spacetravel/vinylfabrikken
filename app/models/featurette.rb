# == Schema Information
#
# Table name: featurettes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  subtitle   :string(255)
#  text       :text
#  link       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Featurette < ActiveRecord::Base
   attr_accessible :title, :subtitle, :text, :link, :image

   mount_uploader :image, ImageUploader

end
