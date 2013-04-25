ActiveAdmin.register Plug do
  filter :title
  filter :body

  config.comments = false
  menu :label => "Forsideplugger"
  

  index do
    column "Overskrift", :title do |plug|
    	link_to plug.title, edit_admin_plug_path(plug)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |plug|
      (time_ago_in_words plug.created_at) + " siden"
    end
    default_actions
  
  end     


  form do |f|
    f.inputs "Informasjon" do
      f.input :title
      f.input :body
      f.input :link
      f.input :image

	end
	f.actions
  end
end
