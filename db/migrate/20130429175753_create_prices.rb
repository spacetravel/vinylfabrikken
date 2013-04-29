class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :name
      t.text :desc
      t.decimal :price, :precision => 2
      
      t.timestamps
    end
  end
end
