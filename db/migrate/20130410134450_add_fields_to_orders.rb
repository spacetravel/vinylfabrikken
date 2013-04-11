class AddFieldsToOrders < ActiveRecord::Migration
  def change

  	add_column :orders, :artwork_medium_id, :integer
  	add_column :orders, :payment_type, :string
  	add_column :orders, :order_number, :string
  	add_column :orders, :order_date, :datetime
  	add_column :orders, :title, :string
  	add_column :orders, :artist, :string
  	add_column :orders, :delivery_method_id, :integer
  	add_column :orders, :status_id, :integer
  	add_column :orders, :audio_master_id, :integer
  	add_column :orders, :number_of_records, :integer
  	
  end
end
