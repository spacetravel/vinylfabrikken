#encoding: utf-8

ActiveAdmin.register Vendor, :as => "Utsalgssted" do

  actions :all, :except => [:show]
  filter :name, :label => "Navn"
  filter :city, :label => "By"
	  

  config.comments = false
  menu :label => "Utsalgssteder"

  index do
    column "Navn", :title do |vendor|
    	link_to vendor.name, edit_admin_utsalgssted_path(vendor)
    end
    column "By", :image do |vendor|
      link_to vendor.city, admin_utsalgssted_path(vendor)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |vendor|
      (time_ago_in_words vendor.created_at) + " siden"
    end
    default_actions
  
  end     
  

  form :html => { :multipart => true }  do |f|
    f.inputs "Informasjon" do
      f.input :name, :label => "Navn"
      f.input :link, :label => "Lenke til Google Maps"
      f.input :desc, :label => "Beskrivelse"
      f.input :speciality, :label => "Spesialiserer seg på?"
      f.input :address, :label => "Adresse"
      f.input :city, :label => "By"
      f.input :phone, :label => "Telefonummer"
      f.input :website, :label => "Nettsted"
 	end
	f.actions
  end

end