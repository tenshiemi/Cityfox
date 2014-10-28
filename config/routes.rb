Rails.application.routes.draw do
  get 'reviews/index'

  root :to => 'welcome#index'
  resources :user_sessions, only: :create
  resources :users
  resources :companies
  resources :reviews

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  post 'search' => 'searches#index'

  get 'owners/new_owner' => 'owners#new', :as => :new_owner
  post 'owners/new_owner' => 'owners#create'
  get 'owner/:id' => 'owners#show', :as => :owner
  get 'owners/claim_company' => 'owners#claim', :as => :claim_company

  get 'owner_landing' => 'owners#landing', :as => :owner_landing

  get 'manage_owners' => 'admins#owners', :as => :manage_owners
  get 'manage_companies' => 'admins#companies', :as => :manage_companies
  get 'verify_owner/:id' => 'admins#verify', :as => :verify_owner

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
