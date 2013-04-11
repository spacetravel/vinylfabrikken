class AddFieldsToUploadMedia < ActiveRecord::Migration
  def change
  	add_column :cover_media, :name, :string
  	add_column :cover_media, :address, :string
  	add_column :cover_media, :description, :text

  	add_column :album_media, :name, :string
  	add_column :album_media, :address, :string
  	add_column :album_media, :description, :text
  end
end
