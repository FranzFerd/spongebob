Spongebob::Application.routes.draw do
  devise_for :users
  
#deafult page
root to: 'static_pages#home'
resources :users, only: [:show, :edit, :get]
resources :events #do
#resource :offers, only: :show
#end 

#member do
#  get 'offer'
#end
#end
resources :event_steps

#Versuch Fabian 
#namespace :users do
#resources :users
# resources :comments 
#end 

namespace :events do
resource :offer, only: :show #, controller: :events
 end 
  

#routes for USERS
match '/user',       to: 'users#show'
match '/user/all', to: 'users#index'
#match '/users' to: 'static_pages#home'
#match '/edit', to: 'users#edit'

#routes i need for users 
###1. profile, profile settings
###2. my events 
###3. my relationships 
###4. ...

# difference between user and sponsor 
###1. similar distinction as above

#routes for static pages 
###1.faq 
###2.help
###3.contact
###4.terms
###5.data_rights
###6.imprint
###7.prices
###8. team

#routes for event_steps

#routes for events
###1.images uploads


#routes for payment 
###1.






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
