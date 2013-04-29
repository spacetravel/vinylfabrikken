class RemoveImageFromPlug < ActiveRecord::Migration
  def up
  	remove_column :plugs, :image

  end

  def down

  	add_column :plugs, :image, :string
  end
end
