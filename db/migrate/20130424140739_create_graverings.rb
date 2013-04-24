class CreateGraverings < ActiveRecord::Migration
  def change
    create_table :graverings do |t|
      t.string :side_a_rpm
      t.string :side_b_rpm
      t.timestamps
    end
  end
end
