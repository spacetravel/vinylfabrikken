class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :ingress
      t.text :body

      t.timestamps
    end
  end
end
