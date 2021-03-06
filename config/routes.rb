Newbies::Application.routes.draw do

  root to: "front#show"  
 
  resources :timecards

  resources :tasks

  resources :jobs

  resources :comments

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  resources :password_resets, only: [:new, :edit, :create, :update]

  get "visitors/welcome"

  get "visitors/how_it_works"

  get "visitors/thank_you"

  get "visitors/help_wanted"

  match '/visitors' => "visitors#front"
#this form creates the vistors_path and visitors_url named routes

  match '/join' => 'users#join'

  match '/hire' => 'jobs#new'

  match '/login' => 'sessions#new'
#  get "login" => "sessions#new", :as => "login"

  match '/signout', to: 'sessions#destroy', via: :delete

  match '/timecard' => 'timecards#new'

  match '/timecard/summary' => 'timecards#summary'

  match '/admin' => 'users#admin'

  match '/site' => "siteindex#show"

  match '/front' => "visitors#front"

  match '/sitemap1.xml.gz' => 'sitemaps#show'


#               root        /                                   front#show
#             timecards GET    /timecards(.:format)                timecards#index
#                       POST   /timecards(.:format)                timecards#create
#          new_timecard GET    /timecards/new(.:format)            timecards#new
#         edit_timecard GET    /timecards/:id/edit(.:format)       timecards#edit
#              timecard GET    /timecards/:id(.:format)            timecards#show
#                       PUT    /timecards/:id(.:format)            timecards#update
#                       DELETE /timecards/:id(.:format)            timecards#destroy
#                 tasks GET    /tasks(.:format)                    tasks#index
#                       POST   /tasks(.:format)                    tasks#create
#              new_task GET    /tasks/new(.:format)                tasks#new
#             edit_task GET    /tasks/:id/edit(.:format)           tasks#edit
#                  task GET    /tasks/:id(.:format)                tasks#show
#                       PUT    /tasks/:id(.:format)                tasks#update
#                       DELETE /tasks/:id(.:format)                tasks#destroy
#                  jobs GET    /jobs(.:format)                     jobs#index
#                       POST   /jobs(.:format)                     jobs#create
#               new_job GET    /jobs/new(.:format)                 jobs#new
#              edit_job GET    /jobs/:id/edit(.:format)            jobs#edit
#                   job GET    /jobs/:id(.:format)                 jobs#show
#                       PUT    /jobs/:id(.:format)                 jobs#update
#                       DELETE /jobs/:id(.:format)                 jobs#destroy
#              comments GET    /comments(.:format)                 comments#index
#                       POST   /comments(.:format)                 comments#create
#           new_comment GET    /comments/new(.:format)             comments#new
#          edit_comment GET    /comments/:id/edit(.:format)        comments#edit
#               comment GET    /comments/:id(.:format)             comments#show
#                       PUT    /comments/:id(.:format)             comments#update
#                       DELETE /comments/:id(.:format)             comments#destroy
#                 users GET    /users(.:format)                    users#index
#                       POST   /users(.:format)                    users#create
#              new_user GET    /users/new(.:format)                users#new
#             edit_user GET    /users/:id/edit(.:format)           users#edit
#                  user GET    /users/:id(.:format)                users#show
#                       PUT    /users/:id(.:format)                users#update
#                       DELETE /users/:id(.:format)                users#destroy
#              sessions POST   /sessions(.:format)                 sessions#create
#           new_session GET    /sessions/new(.:format)             sessions#new
#               session DELETE /sessions/:id(.:format)             sessions#destroy
#       password_resets POST   /password_resets(.:format)          password_resets#create
#    new_password_reset GET    /password_resets/new(.:format)      password_resets#new
#   edit_password_reset GET    /password_resets/:id/edit(.:format) password_resets#edit
#        password_reset PUT    /password_resets/:id(.:format)      password_resets#update
#      visitors_welcome GET    /visitors/welcome(.:format)         visitors#welcome
# visitors_how_it_works GET    /visitors/how_it_works(.:format)    visitors#how_it_works
#    visitors_thank_you GET    /visitors/thank_you(.:format)       visitors#thank_you
#  visitors_help_wanted GET    /visitors/help_wanted(.:format)     visitors#help_wanted
#              visitors        /visitors(.:format)                 visitors#front
#                  join        /join(.:format)                     users#join
#                  hire        /hire(.:format)                     jobs#new
#                 login        /login(.:format)                    sessions#new
#               signout DELETE /signout(.:format)                  sessions#destroy
#                              /timecard(.:format)                 timecards#new
#      timecard_summary        /timecard/summary(.:format)         timecards#summary
#                 admin        /admin(.:format)                    users#admin
#                  site        /site(.:format)                     siteindex#show
#                 front        /front(.:format)                    visitors#front
#                              /sitemap1.xml.gz(.:format)          sitemaps#show

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
  
# path helpers: 
# 'resources :photos' generates
# photos_path returns /photos
# new_photo_path returns /photos/new
# edit_photo_path(:id) returns /photos/:id/edit (for instance, edit_photo_path(10) returns /photos/10/edit)
# photo_path(:id) returns /photos/:id (for instance, photo_path(10) returns /photos/10)
end

