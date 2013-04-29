# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  ingress    :text
#  body       :text
#

class Article < ActiveRecord::Base
  attr_accessible :title, :ingress, :body
end
