class CreatePriceCategories < ActiveRecord::Migration
  def change
    create_table :price_categories do |t|
      t.string :name
      t.string :keyword
      t.text :desc

      t.timestamps
    end
  end
end
