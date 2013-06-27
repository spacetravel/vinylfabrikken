Vf::Application.routes.draw do


  mount S3Multipart::Engine => "/s3_multipart"

  mount Rich::Engine => '/rich', :as => 'rich'


  root :to => 'frontpage#index'

  ActiveAdmin.routes(self)

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
 
  resources :line_items
  resources :carts, :except => [:index]
  match "/handlekurv" => "carts#show"
  match "/kasse" => "carts#checkout"
  match "/kvittering/:id" => "carts#kvittering"
  resources :faqs
  resources :orders
  resources :prices
  resources :delivery_infos
  resources :vendors
  resources :invoices

 
  match "/profil/" => "user_profile#show"
  match "/profil/bestillinger/" => "user_profile#orders"
  match "/profil/transaksjoner/" => "user_profile#transactions"

  match "/bruker/:id/" => "user_profile#show", :employee_view => 1
  match "/bruker/bestillinger/:id/" => "user_profile#orders", :employee_view => 1
  match "/bruker/transaksjoner/:id/" => "user_profile#transactions", :employee_view => 1


  match "/ansatte/bestillinger/" => "orders#employee_orders"
  match "/tilgodkjenning/:id" => "orders#to_approval"
  match "/godkjenn/:id" => "orders#approve"
 

  match "/velgpakke" => "orders#choosepackage"
  match "/tilhandlekurv/:id" => "orders#move_to_shopping_cart"
  match "/omoss" => "articles#show", :id => 1
  match "/kontakt" => "articles#show", :id => 2
  match "/partnere" => "articles#show", :id => 3
  match "/priser" => "prices#index"

  resources :articles

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
