#encoding: utf-8
ActiveAdmin.register Article, :as => 'Artikkel' do
    
  actions :all, :except => [:show]
  filter :title, :label => "Overskrift"
  filter :ingress, :label => "Ingress"
  filter :body, :label => "Tekst"

  config.comments = false
  menu :label => "Sider"
  

  index do
    column "Overskrift", :title do |article|
    	link_to article.title, edit_admin_artikkel_path(article)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |article|
      (time_ago_in_words article.created_at) + " siden"
    end
   
    default_actions
  
  end     
  
  form do |f|
    f.inputs "Informasjon" do
      f.input :title, :label => "Overskrift"
      f.input :ingress, :label => "Ingress", :as => :rich, :config => { :width => '76%', :height => '400px' }
      f.input :body, :label => "Brødtekst", :as => :rich, :config => { :width => '76%', :height => '400px' }      

	end
	f.actions
  end
end
