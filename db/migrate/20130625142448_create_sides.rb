class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.integer :side_num
	  t.integer :gravering_id      
      t.timestamps
    end
  end
end
