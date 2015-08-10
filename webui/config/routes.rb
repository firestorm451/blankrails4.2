Rails.application.routes.draw do
  resources :users
  resources :machines, :has_many => :instances, :has_many => :boxes, :has_many => :configs, :has_many => :connections, :has_many => :harddisks, :has_many => :logfiles, :has_many => :statistics, :has_many => :userlogs
  resources :instances, :has_many => :bans
  resources :boxes, :has_many => :boxusers

  get 'home', :to => 'home#index'
  get 'statistics', :to => 'statistics#index'
  get 'products', :to => 'products#index'
  get 'pricing', :to => 'pricing#index'
  get 'about', :to => 'about#index'
  get 'contact', :to => 'contact#index'
  get 'profile(/)', :to => 'profile#index'
  get 'profile/edit', :to => 'profile#edit'
  match 'profile/login', :to => 'profile#login', :via => [:get, :post]
  get 'profile/logout', :to => 'profile#logout'
  match 'profile/change_password', :to => 'profile#change_password', :via => [:get, :post]
  match 'profile/signup', :to => 'profile#signup', :as => :signup, :via => [:get, :post]
  #match 'profile/switchyard/:gucid', :to => 'profile#switchyard'
  get 'confs/edit', to: 'confs#edit'
  patch 'confs/update', to: 'confs#update'
  get 'configs/edit', to: 'configss#edit'
  patch 'configs/update', to: 'configs#update'
  #get 'simple_captcha' , to: 'simple_captcha#show', as: "simple_captcha", require: 'simple_captcha'
  get 'console', to: 'console'
  get 'console/open', to: 'console#open'
  post 'console/terminal', to: 'console#terminal'
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
