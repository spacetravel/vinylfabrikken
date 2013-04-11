class CreateAudioMasters < ActiveRecord::Migration
  def change
    create_table :audio_masters do |t|
      t.string :sample_rate
      t.string :resolution
     
      t.timestamps
    end
  end
end
