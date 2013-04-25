class AddOrderIdToPressing < ActiveRecord::Migration
  def change
  	add_column :pressings, :order_id, :integer
  end
end
