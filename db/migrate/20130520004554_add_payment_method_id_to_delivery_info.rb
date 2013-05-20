class AddPaymentMethodIdToDeliveryInfo < ActiveRecord::Migration
  def change
  	add_column :delivery_infos, :payment_method_id, :integer
  end
end
