class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.integer :order_id
      t.string :type
      t.timestamps
    end
  end
end
