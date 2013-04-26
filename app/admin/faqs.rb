#encoding: utf-8

ActiveAdmin.register Faq, :as => "FAQ" do

  actions :all, :except => [:show]
  config.comments = false
  menu :label => "Spørsmål & Svar"
  filter :question, :label => "Spørsmål"
  filter :answer, :label => "Svar"

  index do
    column "Spørsmål", :email do |faq|
    	link_to faq.question, edit_admin_faq_path(faq)
    end
  
    column "Kategori", :created_at, :sortable => :created_at do |faq|
       faq.faq_category.title
    end
  
    column "Opprettet", :created_at, :sortable => :created_at do |faq|
      (time_ago_in_words faq.created_at) + " siden"
    end
    default_actions
  
  end

  form do |f|
    f.inputs "Informasjon" do
      f.input :question, :label => "Spørsmål"
      f.input :answer, :label => "Svar"
	end
    f.inputs "Innstillinger" do
	  f.input :faq_category, :label => "Kategori"
	  f.input :published, :label => "Publisert?"
	end
	f.actions
  end  
end
