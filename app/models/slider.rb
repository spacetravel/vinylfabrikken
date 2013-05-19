# == Schema Information
#
# Table name: sliders
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  subtitle    :string(255)
#  button_text :string(255)
#  link        :string(255)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  active      :boolean
#

class Slider < ActiveRecord::Base
   attr_accessible :title, :subtitle, :button_text, :link, :image, :active

   mount_uploader :image, ImageUploader
#   has_attached_file :image, :styles => { :xlarge => "1024x1024>", :thumb => "50x50>" }
end
