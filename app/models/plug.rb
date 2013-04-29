# == Schema Information
#
# Table name: plugs
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  body       :text
#  link       :string(255)
#  image      :string(255)
#

class Plug < ActiveRecord::Base
  attr_accessible :title, :body, :link, :image

  validates :title, presence: true
  validates :body, presence: true
  validates :link, presence: true

   mount_uploader :image, ImageUploader
end
