class AddFakturaAvtaleToUser < ActiveRecord::Migration
  def change
  	add_column :users, :faktura_avtale, :boolean
  end
end
