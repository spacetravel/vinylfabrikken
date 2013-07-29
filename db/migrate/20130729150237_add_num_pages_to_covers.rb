class AddNumPagesToCovers < ActiveRecord::Migration
  def change
  	add_column :covers, :inner_sleeve_pages, :integer
  end
end
