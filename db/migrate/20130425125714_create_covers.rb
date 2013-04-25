class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :inner_sleeve_type
      t.string :sleeve_type
      t.integer :order_id
      t.timestamps 
    end
  end
end
