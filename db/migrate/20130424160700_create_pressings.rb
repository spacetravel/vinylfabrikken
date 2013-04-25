class CreatePressings < ActiveRecord::Migration
  def change
    create_table :pressings do |t|
      t.string :color
      t.integer :weight
      t.boolean :repress
      t.string :holesize

      t.timestamps
    end
  end
end