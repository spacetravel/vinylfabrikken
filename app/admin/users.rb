ActiveAdmin.register User do
 

  filter :email
  filter :admin
  config.comments = false
  menu :label => "Brukere"
  

  index do
    column "E-post", :email do |user|
    	link_to user.email, edit_admin_user_path(user)
    end
    column "Administrator", :admin
  
    column "Opprettet", :created_at, :sortable => :created_at do |user|
      (time_ago_in_words user.created_at) + " siden"
    end
      default_actions
  
  end     


  form do |f|
    f.inputs "Brukerinformasjon" do
      f.input :email
      f.input :password
	end
    f.inputs "Kontaktinformasjon" do
	end
    f.inputs "Systeminstillinger" do
	  f.input :admin
	end
	f.actions
  end
end


