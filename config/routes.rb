Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/about' => 'spree/home#about', :as => :about
  Spree::Core::Engine.add_routes do
    get '/about' => 'page#about', :as => :about
    get '/contact' => 'page#contact', :as => :contact
    #get '/career' => 'page#career', :as => :career
    #get '/media' => 'page#media', :as => :media
    get '/faq' => 'page#faq', :as => :faq
    get '/privacy_policy' => 'page#privacy_policy', :as => :privacy_policy
    get '/shipping_and_return_policy' => 'page#snr_policy', :as => :shipping_and_return_policy
    get '/terms_and_conditions' => 'page#tnc', :as => :terms_and_conditions

  end
end
