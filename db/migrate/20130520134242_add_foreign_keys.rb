class AddForeignKeys < ActiveRecord::Migration
  def change
  	add_column :orders, :invoice_id, :integer
  	add_column :delivery_infos, :invoice_id, :integer
  end
end
