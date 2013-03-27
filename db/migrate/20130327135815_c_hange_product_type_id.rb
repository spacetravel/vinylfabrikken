class CHangeProductTypeId < ActiveRecord::Migration
  def up
    remove_column :products, :type_id
    add_column :products, :product_type_id, :integer
  end

  def down
    remove_column :products, :product_type_id
    add_column :products, :type_id, :integer
  end
end
