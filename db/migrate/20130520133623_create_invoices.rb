class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.datetime :invoice_date
      t.datetime :invoice_deadline
      t.decimal :total_sum
      t.integer :status
      
      t.timestamps
    end
  end
end
