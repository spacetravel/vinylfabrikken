class AddTypeAndDescriptionToPaymentMethods < ActiveRecord::Migration
  def change
  	add_column :payment_methods, :title, :string
  	add_column :payment_methods, :desc, :text

  end
end
