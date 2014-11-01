Rails.application.routes.draw do
  get 'reviews/index'

  root :to => 'welcome#index'
  get '/get_all', to: 'companies#get_all', as: :get_all

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  post 'search' => 'searches#index'

  get 'owners/new_owner' => 'owners#new', :as => :new_owner
  post 'owners/new_owner' => 'owners#create'
  get 'owners/claim_company' => 'owners#claim', :as => :claim_company
  get 'owner_landing' => 'owners#landing', :as => :owner_landing

  get 'manage_owners' => 'admins#owners', :as => :manage_owners
  get 'verify_relation/:id' => 'admins#verify', :as => :verify_relation

  get 'reviews/flagged_reviews' => 'admins#flagged', :as => :flagged_reviews
  post 'reviews/add_response' => 'reviews#add_response', :as => :add_response
  post 'reviews/flag_review/:id' => 'reviews#flag_review', :as => :flag_review
  post 'users/change_password' => 'users#change_password', :as => :change_password

  resources :user_sessions, only: :create
  resources :users
  resources :companies
  resources :reviews

end
