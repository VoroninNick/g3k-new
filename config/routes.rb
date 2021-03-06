G3k::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :carts  do
    resources :line_items do
      collection do
        put :add_product
        delete :destroy_product
      end
    end
  end

  get "/katalog" => "katalog#katalog", :as => :katalog
  get '/katalog/:category_name', to:'katalog#show', as:'category'
  get '/katalog/product/:id' => 'katalog#show_product', :as => :product

  post "/order", to: 'application#order', as: :call_orders

  get "/about_us" => "about_us#about_us", :as => :about
  get "/actsii" => "actii#actsii", :as => :actsii
  get "/publications" => "publications#publications", :as => :publications
  get "/contacts" => "contacts#contacts", :as => :contacts
  get '/publications/articles' => 'article#index', :as => :articles
  get '/publications/articles/:id' => 'article#item', :as => :article_item

  get '/dostavka_po_vsi_ukraini' => 'dostavka_po_vsi_ukraini#delivery_all_over_Ukraine', :as => :dostavka
  get '/pracjujemo_z' => 'pracjujemo_z#working_with', :as => :pracjujemo
  get '/bezproblemne_povernennja' => 'bezproblemne_povernennja#smooth_return', :as => :smooth_return
  get '/garantia_jakosti' => 'garantia_jakosti#quality_assurance', :as => :quality_assurance

  resources "contacts", only: [:new, :create]

  resources "order_products", only: [:new, :create]

  post '/buy_product' => 'home#buy_product', as: :buy_product
  post '/call_order' => 'home#call_order', as: :call_order
  post '/contact_us' => 'home#contact_us', as: :contact_us
  post '/delete_product' => 'line_items#destroy_product', as: :delete_product

  post '/del_all' => 'line_items#del_all', as: :del_all



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
  get 'aae95aece941.html', to: 'yandex_mail#confirm'
  root :to =>'home#index'
end
