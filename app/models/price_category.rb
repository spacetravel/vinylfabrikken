# == Schema Information
#
# Table name: price_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  keyword    :string(255)
#  desc       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PriceCategory < ActiveRecord::Base
   attr_accessible :name, :keyword, :desc

   has_many :prices
end
