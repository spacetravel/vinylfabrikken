class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :city
      t.string :link
      t.text :desc
      t.text :speciality
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
