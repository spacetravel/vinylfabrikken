class AddPriceCategoryIdToPrice < ActiveRecord::Migration
  def change
  	add_column :prices, :price_category_id, :integer
  end
end
