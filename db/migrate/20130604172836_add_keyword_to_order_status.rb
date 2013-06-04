class AddKeywordToOrderStatus < ActiveRecord::Migration
  def change
  	add_column :order_statuses, :keyword, :string
  end
end
