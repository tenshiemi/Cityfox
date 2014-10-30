Rails.application.routes.draw do
  get 'reviews/index'

  root :to => 'welcome#index'
  get 'companies/get_all', to: 'companies#get_all', as: :get_all

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
  get 'verify_relation/:id' => 'admins#verify', :as => :verify_relation

  post 'reviews/add_response' => 'reviews#add_response', :as => :add_response

  resources :user_sessions, only: :create
  resources :users
  resources :companies
  resources :reviews

end
