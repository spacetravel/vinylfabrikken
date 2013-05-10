class CreateLineItems < ActiveRecord::Migration
  def change

    create_table :line_items, :force => true do |t|
      t.integer :order_id
      t.integer :cart_id

      t.timestamps
    end
  end
end