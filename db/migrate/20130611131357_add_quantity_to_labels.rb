class AddQuantityToLabels < ActiveRecord::Migration
  def change
  	add_column :labels, :quantity, :integer
  end
end
