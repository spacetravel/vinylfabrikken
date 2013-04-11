class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.string :title
      t.text :description
      t.string :color
      t.integer :owner # 0 = none, 1 = customer, 2 = employee

      t.timestamps
    end
  end
end
