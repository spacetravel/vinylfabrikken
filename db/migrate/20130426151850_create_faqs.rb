class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :answer
      t.string :category
      t.boolean :published

      t.timestamps
    end
  end
end
