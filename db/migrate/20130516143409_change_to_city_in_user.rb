class ChangeToCityInUser < ActiveRecord::Migration
  def up
  	remove_column :users, :poststed
  	add_column :users, :city, :string
  end

  def down
  	remove_column :users, :city
  	add_column :users, :poststed, :string
  end
end
