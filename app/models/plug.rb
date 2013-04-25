class Plug < ActiveRecord::Base
  attr_accessible :title, :body, :link, :image

  validates :title, presence: true
  validates :body, presence: true
  validates :link, presence: true

   mount_uploader :image, ImageUploader
end
