class AddTotalSumToCart < ActiveRecord::Migration
  def change
  	add_column :carts, :total_sum, :decimal, :precision => 8, :scale => 2
  end
end
