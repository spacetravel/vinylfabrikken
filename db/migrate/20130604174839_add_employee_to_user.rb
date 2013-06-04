class AddEmployeeToUser < ActiveRecord::Migration
  def change
  	add_column :users, :employee, :boolean, :default => 0
  end
end
