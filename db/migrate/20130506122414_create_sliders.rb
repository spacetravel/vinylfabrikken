class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :subtitle
      t.string :button_text
      t.string :link
      t.string :image
      t.timestamps
    end
  end
end
