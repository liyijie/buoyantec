Rails.application.routes.draw do

  get 'solution/ict'

  get 'solution/mcc' 

  get 'solution/internet'

  get 'solution/webthing'

  get 'solution/futclass'

  get 'solution/dtce'

  get 'solution/key_manager'

  get 'solution/things'

  get 'home/error'
  
  resource :abouts ,only: [:show] do
    collection do 
      get :company
      get :dtby
      get :team
      get :job
    end
  end

  get '/college', to: "colleges#index", as: :colleges

  get 'cases/train'
  get 'cases', to: "cases#edu", as: :cases_edu
  get 'cases/industry'
  get 'cases/things'

  get '/enterprise', to: "enterprise#index", as: :enterprise
  get '/education', to: "education#index", as: :educations
  get 'dtce/index'

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'home/index'


  resources :reports, only: [:index, :show]
  resources :trains

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
