class ChangeNameToInteger < ActiveRecord::Migration
  def up
  	remove_column :tracks, :name
  	add_column :tracks, :name, :string
  end

  def down
  	remove_column :tracks, :name
  	add_column :tracks, :name, :integer
  end
end
