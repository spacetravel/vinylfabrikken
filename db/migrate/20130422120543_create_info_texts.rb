class CreateInfoTexts < ActiveRecord::Migration
  def change
    create_table :info_texts do |t|

      t.string :keyword
      t.text :desc
      t.text :short_desc

      t.timestamps
    end
  end
end
