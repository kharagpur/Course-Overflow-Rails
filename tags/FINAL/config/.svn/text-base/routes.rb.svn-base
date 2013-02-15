CourseOverflow::Application.routes.draw do
  

  resources :users
  resources :definitions
  resources :departments, :only => [:show]
  
  resources :courses do
    member do
      get :questions      
    end
  end
  

  resources :answers, :only => [:create]
  resources :questions, :only => [:create]

  match "/courses/:id/question/:qid", to: 'courses#answers'
  match "topics/:tid/definitions", to: 'definitions#new'
  match "/courses/:id/new", to: 'topics#new'
  match "topics/:tid/videos", to: 'videos#new'
  match "topics/:tid/analogies", to: 'analogies#new'
  match "/votes/:id", to: 'votes#vote'
  match "/votes/:content/:id", to: 'votes#addvote'
  match "/topics/:tid/definitions/edit/:id", to: 'definitions#edit'
  match "/topics/:tid/analogies/edit/:id", to: 'analogies#edit'
  match "/topics/:tid/videos/edit/:id", to: 'videos#edit'
  
  

  resources :sessions, :only => [:create, :destroy]
  resources :departments
  resources :analogy
  resources :topics
  resources :videos
  
  
  root :to => 'pages#home'
  match '/logout', :to => 'sessions#destroy'
  
 

  get "pages/home"

  get "pages/login"

  get "pages/register"
  post "/topics/create"
  post "/analogies/create"
  post "/videos/create"
  put "/analogies/update"
  
  

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
