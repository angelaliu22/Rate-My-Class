Rails.application.routes.draw do
    resources :enrollments
    resources :enrollments
    resources :reviews
    resources :reviewers
    resources :educations
    resources :schools
    resources :professorships
    resources :professors
    resources :klasses
    resources :courses
    
    # Authentication routes


    # Semi-static page routes
    get 'home' => 'home#home', as: :home
    get 'about' => 'home#about', as: :about
    get 'contact' => 'home#contact', as: :contact
    get 'privacy' => 'home#privacy', as: :privacy
    get 'search' => 'home#search', as: :search
  
  # Set the root url
  root :to => 'home#home'  
  
  # Named routes


  
  # Last route in routes.rb that essentially handles routing errors
#  get '*a', to: 'errors#routing'
    
    
    
    
    
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
