Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  post 'session' => 'session#create'
  delete 'session' => 'session#destroy'

  get 'admin/:id/new' => 'admin#new'
  post 'admin/:id/new' => 'admin#create'

  resources :admin
  resources :images
  resources :sections
  resources :testimonials

  resources :admin do
    resources :images
    resources :sections
    resources :testimonials

  end



#                 Prefix Verb   URI Pattern                                      Controller#Action
#                   root GET    /                                                welcome#index
#                session POST   /session(.:format)                               session#create
#                        DELETE /session(.:format)                               session#destroy
#            admin_index GET    /admin(.:format)                                 admin#index
#                        POST   /admin(.:format)                                 admin#create
#              new_admin GET    /admin/new(.:format)                             admin#new
#             edit_admin GET    /admin/:id/edit(.:format)                        admin#edit
#                  admin GET    /admin/:id(.:format)                             admin#show
#                        PATCH  /admin/:id(.:format)                             admin#update
#                        PUT    /admin/:id(.:format)                             admin#update
#                        DELETE /admin/:id(.:format)                             admin#destroy
#           admin_images GET    /admin/:admin_id/images(.:format)                images#index
#                        POST   /admin/:admin_id/images(.:format)                images#create
#        new_admin_image GET    /admin/:admin_id/images/new(.:format)            images#new
#       edit_admin_image GET    /admin/:admin_id/images/:id/edit(.:format)       images#edit
#            admin_image GET    /admin/:admin_id/images/:id(.:format)            images#show
#                        PATCH  /admin/:admin_id/images/:id(.:format)            images#update
#                        PUT    /admin/:admin_id/images/:id(.:format)            images#update
#                        DELETE /admin/:admin_id/images/:id(.:format)            images#destroy
#         admin_sections GET    /admin/:admin_id/sections(.:format)              sections#index
#                        POST   /admin/:admin_id/sections(.:format)              sections#create
#      new_admin_section GET    /admin/:admin_id/sections/new(.:format)          sections#new
#     edit_admin_section GET    /admin/:admin_id/sections/:id/edit(.:format)     sections#edit
#          admin_section GET    /admin/:admin_id/sections/:id(.:format)          sections#show
#                        PATCH  /admin/:admin_id/sections/:id(.:format)          sections#update
#                        PUT    /admin/:admin_id/sections/:id(.:format)          sections#update
#                        DELETE /admin/:admin_id/sections/:id(.:format)          sections#destroy
#     admin_testimonials GET    /admin/:admin_id/testimonials(.:format)          testimonials#index
#                        POST   /admin/:admin_id/testimonials(.:format)          testimonials#create
#  new_admin_testimonial GET    /admin/:admin_id/testimonials/new(.:format)      testimonials#new
# edit_admin_testimonial GET    /admin/:admin_id/testimonials/:id/edit(.:format) testimonials#edit
#      admin_testimonial GET    /admin/:admin_id/testimonials/:id(.:format)      testimonials#show
#                        PATCH  /admin/:admin_id/testimonials/:id(.:format)      testimonials#update
#                        PUT    /admin/:admin_id/testimonials/:id(.:format)      testimonials#update
#                        DELETE /admin/:admin_id/testimonials/:id(.:format)      testimonials#destroy
#                        GET    /admin(.:format)                                 admin#index
#                        POST   /admin(.:format)                                 admin#create
#                        GET    /admin/new(.:format)                             admin#new
#                        GET    /admin/:id/edit(.:format)                        admin#edit
#                        GET    /admin/:id(.:format)                             admin#show
#                        PATCH  /admin/:id(.:format)                             admin#update
#                        PUT    /admin/:id(.:format)                             admin#update
#                        DELETE /admin/:id(.:format)                             admin#destroy



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
