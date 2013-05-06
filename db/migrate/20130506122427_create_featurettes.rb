class CreateFeaturettes < ActiveRecord::Migration
  def change
    create_table :featurettes do |t|
      t.string :title
      t.string :subtitle
      t.text :text
      t.string :link
      t.string :image
      t.timestamps
    end
  end
end
