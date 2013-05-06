class Featurette < ActiveRecord::Base
   attr_accessible :title, :subtitle, :text, :link, :image

   mount_uploader :image, ImageUploader

end
