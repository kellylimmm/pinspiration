Rails.application.routes.draw do
  devise_for :users
  # resources :pins
  root "pins#index", as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/pins' => 'pins#index', as: 'pins'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show' , as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  patch '/pins/:id' => 'pins#update'
  delete '/pins/:id' => 'pins#destroy'


end