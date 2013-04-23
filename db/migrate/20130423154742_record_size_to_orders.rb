class RecordSizeToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :record_size, :string
  	add_column :orders, :priority, :integer

  end
end