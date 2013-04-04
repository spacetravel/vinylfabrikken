class AddStatusToOrderLine < ActiveRecord::Migration
  def change
    add_column :order_lines, :status, :integer, :default => 0
  end
end
