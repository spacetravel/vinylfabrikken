class AddFileUrlToTracks < ActiveRecord::Migration
  def change
  	add_column :tracks, :file_url, :string
  end
end
