class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.decimal :price
      t.integer :type_id

      t.timestamps
    end
  end
end
