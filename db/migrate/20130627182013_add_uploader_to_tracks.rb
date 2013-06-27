class AddUploaderToTracks < ActiveRecord::Migration
  def change
    change_table :tracks do |t|
      t.string :uploader
    end
  end
end
