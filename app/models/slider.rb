class Slider < ActiveRecord::Base
   attr_accessible :title, :subtitle, :button_text, :link, :image, :active

   mount_uploader :image, ImageUploader
#   has_attached_file :image, :styles => { :xlarge => "1024x1024>", :thumb => "50x50>" }
end