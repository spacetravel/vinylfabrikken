ActiveAdmin.register User, :as => "Bruker" do
 
  actions :all, :except => [:show]
  filter :email, :label => "E-post"
  filter :admin, :label => "Administrator?"
  config.comments = false
  menu :label => "Brukere"
  

  index do
    column "E-post", :email do |user|
    	link_to user.email, edit_admin_bruker_path(user)
    end
    column "Administrator", :admin
  
    column "Opprettet", :created_at, :sortable => :created_at do |user|
      (time_ago_in_words user.created_at) + " siden"
    end
      default_actions
  
  end     


  form do |f|
    f.inputs "Brukerinformasjon" do
      f.input :email, :label => "E-post"
      f.input :password, :label => "Passord"
	end
    f.inputs "Kontaktinformasjon" do
	end
    f.inputs "Systeminstillinger" do
    f.input :admin, :label => "Er denne brukeren administrator?"
    f.input :faktura_avtale, :label => "Har brukeren en fakturaavtale?"
    f.input :employee, :label => "Er denne brukeren en ansatt?"
	end
	f.actions
  end
end


