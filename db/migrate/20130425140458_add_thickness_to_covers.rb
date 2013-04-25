class AddThicknessToCovers < ActiveRecord::Migration
  def change
  	add_column :covers, :thickness, :string
  end
end
