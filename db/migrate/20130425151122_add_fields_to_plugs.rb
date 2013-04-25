class AddFieldsToPlugs < ActiveRecord::Migration
  def change
  	add_column :plugs, :title, :string
  	add_column :plugs, :body, :text
  	add_column :plugs, :link, :string
  	add_column :plugs, :image, :string
  end
end
