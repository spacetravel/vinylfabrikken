class AddAlbumMediumIdToAudioMaster < ActiveRecord::Migration
  def change
  	add_column :audio_masters, :album_medium_id, :integer
  end
end
