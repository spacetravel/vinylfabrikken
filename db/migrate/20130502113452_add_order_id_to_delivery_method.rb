class AddOrderIdToDeliveryMethod < ActiveRecord::Migration
  def change
  	add_column :delivery_methods, :order_id, :integer
  end
end
