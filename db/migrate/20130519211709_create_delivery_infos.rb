class CreateDeliveryInfos < ActiveRecord::Migration
  def change
    create_table :delivery_infos do |t|

      t.integer :user_id

      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :zipcode
      t.string :city
      t.string :country
      t.text :comments
      t.string :payment_type
      t.text :payment_comment

      t.timestamps
    end
  end
end
