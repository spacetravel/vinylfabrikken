class AddCatalogueNumberToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :catalogue_number, :string
  end
end
