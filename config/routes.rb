Rails.application.routes.draw do
  # get '/pictures/new' => 'pictures#new'
  resources :pictures
  root "pictures#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
