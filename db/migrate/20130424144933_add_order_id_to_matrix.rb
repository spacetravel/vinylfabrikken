class AddOrderIdToMatrix < ActiveRecord::Migration
  def change
  	add_column :matrices, :order_id, :integer
  	add_column :matrices, :quantity, :integer
  end
end
