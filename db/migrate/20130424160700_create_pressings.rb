class CreatePressings < ActiveRecord::Migration
  def change
    create_table :pressings do |t|

      t.timestamps
    end
  end
end
