class CreateAlbumMedia < ActiveRecord::Migration
  def change
    create_table :album_media do |t|

      t.timestamps
    end
  end
end
