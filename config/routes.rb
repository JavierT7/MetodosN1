Rails.application.routes.draw do

  get 'gauss_seidel/index'

  get 'gauss_seidel/metodo'

  get 'gauss_seidel/generar'

  get 'biseccion_del_intervalo/metodo'
  get 'biseccion_del_intervalo/index'

  get 'biseccion_del_intervalo/generar' => 'biseccion_del_intervalo#generar', as: :generar_biseccion_del_intervalo
  get 'gauss_seidel/generar' => 'gauss_seidel#generar', as: :generar_gauss_seidel

  get 'descripcion/index'

  root 'inicio#index'
  get 'inicio/index'

  post 'descrpcion/index' => 'descripcion#index', as: 'descripcion'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
