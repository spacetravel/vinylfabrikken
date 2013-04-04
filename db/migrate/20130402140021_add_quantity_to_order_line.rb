class AddQuantityToOrderLine < ActiveRecord::Migration
  def change
    add_column :order_lines, :quantity, :integer
  end
end
