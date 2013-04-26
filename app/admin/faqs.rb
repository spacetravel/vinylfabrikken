#encoding: utf-8

ActiveAdmin.register Faq, :as => "FAQ" do

  config.comments = false
  menu :label => "Spørsmål & Svar"
  filter :question  
  filter :answer

  index do
    column "Spørsmål", :email do |faq|
    	link_to faq.question, edit_admin_faq_path(user)
    end
  
    column "Opprettet", :created_at, :sortable => :created_at do |faq|
      (time_ago_in_words faq.created_at) + " siden"
    end
      default_actions
  
  end     


  form do |f|
    f.inputs "Informasjon" do
      f.input :question
      f.input :answer
	end
    f.inputs "Instillinger" do
	  f.input :category
	  f.input :published
	end
	f.actions
  end  
end
