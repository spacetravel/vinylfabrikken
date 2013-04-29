# == Schema Information
#
# Table name: info_texts
#
#  id         :integer          not null, primary key
#  keyword    :string(255)
#  desc       :text
#  short_desc :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InfoText < ActiveRecord::Base
  attr_accessible :keyword, :short_desc, :desc
end
