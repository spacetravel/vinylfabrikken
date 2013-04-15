class ModeAudioMasterId < ActiveRecord::Migration
  def up
  	remove_column :orders, :audio_master_id
  	add_column :audio_masters, :order_id, :integer
  end

  def down
  	remove_column :audio_masters, :order_id
  	add_column :orders, :audio_master_id, :integer
  end
end
