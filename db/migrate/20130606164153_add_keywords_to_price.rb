class AddKeywordsToPrice < ActiveRecord::Migration
  def change
  	add_column :prices, :keyword1, :string
  	add_column :prices, :keyword2, :string
  end
end
