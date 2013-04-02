class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|

      t.timestamps
    end
  end
end
