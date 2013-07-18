class AddPackageIdToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :package_id, :integer
  end
end