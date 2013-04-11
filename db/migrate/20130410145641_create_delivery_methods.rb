class CreateDeliveryMethods < ActiveRecord::Migration
  def change
    create_table :delivery_methods do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
