class ChangeStatusIdNameInOrder < ActiveRecord::Migration
  def up
  	remove_column :orders, :status_id
  	add_column :orders, :order_status_id, :integer
  end

  def down
  	remove_column :orders, :order_status_id
  	add_column :orders, :status_id, :integer
  end
end
