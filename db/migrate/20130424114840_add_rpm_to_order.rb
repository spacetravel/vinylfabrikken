class AddRpmToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :rpm, :string
  end
end
