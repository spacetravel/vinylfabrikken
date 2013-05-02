class ChangeTypeInLabels < ActiveRecord::Migration
  def change
  	remove_column :labels, :type
  	add_column :labels, :label_type, :string
  end
end
