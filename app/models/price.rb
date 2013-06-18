# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :text
#  price      :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Price < ActiveRecord::Base
   attr_accessible :name, :desc, :price, :keyword1, :keyword2, :price_category_id, :keyword3

   belongs_to :price_category

   scope :gravering, where(:price_category_id =>PriceCategory.where("keyword = ?", "gravering"))
   scope :matriser, where(:price_category_id =>PriceCategory.where("keyword = ?", "matriser"))
   scope :provetrykk, where(:price_category_id =>PriceCategory.where("keyword = ?", "provetrykk"))
   scope :pressing, where(:price_category_id =>PriceCategory.where("keyword = ?", "pressing"))
   scope :labels, where(:price_category_id =>PriceCategory.where("keyword = ?", "labels"))



end
