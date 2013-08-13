Servicio7::Application.routes.draw do
  resources :periodismos

  resources :odontologiaimprenta

  resources :odontologia3s

  resources :odontologia2s

  resources :odontologia1s

  resources :medicinas

  resources :mecanicacomplejos

  resources :humanidades3s

  resources :humanidades2s

  resources :humanidades1s

  resources :economia6s

  resources :economia5s

  resources :economia4s

  resources :economia3s

  resources :economia2s

  resources :economia1s

  resources :derechos

  resources :comedorues

  resources :cafetines

  resources :auditoriummarmols

  resources :artes

  resources :agronomiagaleras

  resources :agronomiadecanatos

  get "servicio/index"

  resources :agronomia

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
  root :to => 'servicio#index' , :as => 'servicio'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
