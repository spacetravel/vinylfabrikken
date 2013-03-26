class ChangeFieldsInPages < ActiveRecord::Migration
  def up
    remove_column :pages, :ingress
    remove_column :pages, :body
    add_column :pages, :ingress, :text
    add_column :pages, :body, :text
  end

  def down
    remove_column :pages, :ingress
    remove_column :pages, :body
    add_column :pages, :ingress, :string
    add_column :pages, :body, :string
  end
end
