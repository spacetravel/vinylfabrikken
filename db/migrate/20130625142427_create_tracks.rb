class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|

      t.integer :duration
      t.integer :name
      t.integer :side_id
      
      t.timestamps
    end
  end
end
