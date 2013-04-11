class CreateCoverMedia < ActiveRecord::Migration
  def change
    create_table :cover_media do |t|

      t.timestamps
    end
  end
end
