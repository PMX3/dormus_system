Rails.application.routes.draw do
  root 'applicant#sign_in'
  resources :dormer_notifications
  resources :notifications
  resources :door_logs
  devise_for :admins
  devise_for :applicants, controllers: { registrations: 'registrations' }
  devise_for :parents

  resources :laundry_orders
  resources :laundry_order_items
  resources :laundry_items
  resources :rooms do
    get :autocomplete_applicant_first_name, :on => :collection
  end

  post '/rooms/update_dormers' => "rooms#update_dormers"
  resources :submissions
  resources :statement_of_accounts
  resources :deals
  resources :meals

  resources :applicants do
    resources :food_plans
  end

  resources :applicants do
    resources :laundry_orders
  end

  get '/applicants/:id/room_select' => 'applicants#room_select', as: :room_select
  get '/applicants/:id/preference' => 'applicants#preference', as: :edit_preference
  get '/applicants/:id/show_applicant'=> 'applicants#show_applicant', as: :show_applicant
  get '/applicants/:id/show_dormer'=> 'applicants#show_dormer', as: :show_dormer
  get '/applicants/:id/show_dormer/add_violation' => 'applicants#add_violation', as: :add_violation
  get '/applicants/:applicant_id/food_plans/:id/meal_select' => 'food_plans#meal_select', as: :meal_select
  get '/dormer_list'=> 'applicants#dormer_list', as: :dormer_list
  post '/applicants/:id/create_account' => 'applicants#create_account', as: :create_account
  post '/applicants/:id' => 'applicants#update_preference', as: :update_preference
  post '/applicants/:id/approve' => 'applicants#approve', as: :approve
  get '/food_plans/today_food' => "food_plans#today_food", as: :today_food
  get '/rooms/:id/room_status'=>"rooms#room_status", as: :room_status
  post '/food_plans/food_email' => 'food_plans#food_email', as: :food_email
  namespace :api do 
    namespace :v1 do
      get '/applicants'=> 'applicants#index'
      get '/applicants/update'=>'applicants#update'
    end
  end
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
