#encoding: utf-8

ActiveAdmin.register Slider do
 
  actions :all, :except => [:show]
  filter :title, :label => "Overskrift"
  
  config.comments = false
  menu :label => "Sliders"
  
  index do
    column "Overskrift", :title do |slider|
    	link_to slider.title, edit_admin_slider_path(slider)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |slider|
      (time_ago_in_words slider.created_at) + " siden"
    end
    column "Bilde", :image do |slider|
      link_to(image_tag(slider.image.url(:thumb).to_s), admin_slider_path(slider))
    end
    default_actions
  
  end     
  
  form :html => { :multipart => true }  do |f|
    f.inputs "Informasjon" do
      f.input :title, :label => "Overskrift"
      f.input :subtitle, :label => "Underoverskrift"
      f.input :button_text, :label => "Knappete"
      f.input :link, :label => "Lenke"
      f.input :active, :label => "Aktiv?"
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)), :label => "Bilde" 
	end
	f.actions
  end
end