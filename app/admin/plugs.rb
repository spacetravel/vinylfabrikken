ActiveAdmin.register Plug,  :as => "Forsideplugg" do
  
  actions :all, :except => [:show]
  filter :title, :label => "Overskrift"
  filter :body, :label => "Tekst"

  config.comments = false
  menu :label => "Forsideplugger"
  

  index do
    column "Overskrift", :title do |plug|
    	link_to plug.title, edit_admin_forsideplugg_path(plug)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |plug|
      (time_ago_in_words plug.created_at) + " siden"
    end
    column "Bilde", :image do |plug|
      link_to(image_tag(plug.image.url(:thumb).to_s), admin_forsideplugg_path(plug))
    end
    default_actions
  
  end     
  
  form :html => { :multipart => true }  do |f|
    f.inputs "Informasjon" do
      f.input :title, :label => "Overskrift"
      f.input :body, :label => "Tekst"
      f.input :link, :label => "Lenke"
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)), :label => "Bilde" 
	end
	f.actions
  end
end
