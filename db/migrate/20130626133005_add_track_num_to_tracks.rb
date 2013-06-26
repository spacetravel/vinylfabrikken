class AddTrackNumToTracks < ActiveRecord::Migration
  def change
  	remove_column :tracks, :duration
  	add_column :tracks, :duration_mins, :integer
  	add_column :tracks, :duration_secs, :integer
  	add_column :tracks, :track_num, :integer
  end
end
