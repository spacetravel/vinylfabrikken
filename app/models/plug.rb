# == Schema Information
#
# Table name: plugs
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  title              :string(255)
#  body               :text
#  link               :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Plug < ActiveRecord::Base
  attr_accessible :title, :body, :link, :image


  validates :title, presence: true
  validates :body, presence: true
  validates :link, presence: true

  has_attached_file :image, 
  	:styles => {
       :thumb => "100x100#",
       :small  => "200x200#",
       :medium  => "400x400", }

#   mount_uploader :image, ImageUploader
end
