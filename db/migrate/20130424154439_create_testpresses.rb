class CreateTestpresses < ActiveRecord::Migration
  def change
    create_table :testpresses do |t|
      t.integer :order_id
      t.integer :quantity
      t.timestamps
    end
  end
end
