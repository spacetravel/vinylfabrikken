class AddOrderIdToGravering < ActiveRecord::Migration
  def change
  	add_column :graverings, :order_id, :integer
  end
end
