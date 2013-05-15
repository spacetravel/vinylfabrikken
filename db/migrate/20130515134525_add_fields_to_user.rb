class AddFieldsToUser < ActiveRecord::Migration
  def change
	add_column :users, :first_name, :string
	add_column :users, :last_name, :string
	add_column :users, :phone, :string  	
	add_column :users, :address1, :string
	add_column :users, :address2, :string
	add_column :users, :poststed, :string
	add_column :users, :zipcode, :integer
	add_column :users, :country_code, :string
	add_column :users, :is_editor, :boolean
	add_column :users, :profile_image, :string
  end
end
