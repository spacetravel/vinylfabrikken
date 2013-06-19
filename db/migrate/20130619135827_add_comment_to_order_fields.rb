class AddCommentToOrderFields < ActiveRecord::Migration
  def change
  	add_column :graverings, :comments, :text
  	add_column :matrices, :comments, :text
  	add_column :testpresses, :comments, :text
  	add_column :pressings, :comments, :text
  	add_column :labels, :comments, :text
  	add_column :covers, :comments, :text

  end
end
