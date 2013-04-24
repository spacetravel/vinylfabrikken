class AddQuantityToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :quantity, :integer, :default => 300
  end
end
