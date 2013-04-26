class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :answer
      t.boolean :published
      t.integer :faq_category_id

      t.timestamps
    end
  end
end
