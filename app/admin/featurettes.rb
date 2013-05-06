ActiveAdmin.register Featurette do
 
  actions :all, :except => [:show]
  filter :title, :label => "Overskrift"
  filter :text, :label => "Tekst"
  
  config.comments = false
  menu :label => "Featurettes"
  
  index do
    column "Overskrift", :title do |featurette|
    	link_to featurette.title, edit_admin_featurette_path(featurette)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |featurette|
      (time_ago_in_words featurette.created_at) + " siden"
    end
    column "Bilde", :image do |featurette|
      link_to(image_tag(featurette.image.url(:thumb).to_s), admin_featurette_path(featurette))
    end
    default_actions
  
  end     
  
  form :html => { :multipart => true }  do |f|
    f.inputs "Informasjon" do
      f.input :title, :label => "Overskrift"
      f.input :subtitle, :label => "Underoverskrift"
      f.input :text, :label => "Tekst"
      f.input :link, :label => "Lenke"
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)), :label => "Bilde" 
	end
	f.actions
  end  
end
