ActiveAdmin.register Price, :as => "Pris" do
  
  actions :all, :except => [:show]
  filter :name, :label => "Produkt"
  filter :desc, :label => "Beskrivelse"

  config.comments = false
  menu :label => "Priser"


  index do
    column "Produkt", :name do |product|
    	link_to product.name, edit_admin_pri_path(product)
    end
    
    column "Enhetspris", :price

    default_actions
  
  end     

  form do |f|
    f.inputs "Informasjon" do
      f.input :price_category, :label => "Kategori"
      f.input :name, :label => "Produkt"
      f.input :desc, :label => "Beskrivelse"
      f.input :price, :label => "Enhetspris"
      f.input :keyword1, :label => "Stikkord #1"
      f.input :keyword2, :label => "Stikkord #2"

	end
	f.actions
  end
end


  

  
