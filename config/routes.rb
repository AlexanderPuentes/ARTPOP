Rails.application.routes.draw do
  devise_for :users
  resources :pictures
  # resources :profiles

  get '/users/:id' => 'users#show', :as => :user

  devise_scope :user do
    get "/" => "devise/sessions#create"
  end

  get "dashboard", to: "dashboard#index", as: "dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
