class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|

      t.timestamps
    end
  end
end
