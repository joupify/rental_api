Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :listings, except: [:new, :edit]
  get '/missions', to: 'missions#index'
  # Defines the root path route ("/")
  root "missions#index"
end
