class AddKeyword3ToPrice < ActiveRecord::Migration
  def change
  	add_column :prices, :keyword3, :string
  end
end
