class AddFieldsToPackage < ActiveRecord::Migration
  def change
  	add_column :packages, :quantity, :integer
  end
end
