ShopShine::Application.routes.draw do

root to: 'authentications#new'

  namespace :api do
    resources :users
  end

  namespace :api do
    resources :category_sizes
  end

  namespace :api do
    resources :category
  end

  resources :authentications

  post 'users/category_sizes' => 'users#category_sizes'

  get 'users/results' => 'users#results'

  get 'users/results/:id' => 'users#results'

  get 'users/category_sizes/:categorysizeid' => 'users#show_json'

  resources :users

  get 'categories/show_json/:id' => 'categories#show_json'

  # get 'users/profile' => 'users#profile'


  get 'signup' => 'users#new'



  resources :sizes

  resources :category_sizes

  resources :categories

  

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
