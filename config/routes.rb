Rails.application.routes.draw do
  get 'booking/new'
  get 'booking/new/:movie_id', to: 'booking#sorttheater'
  get 'shows/new'
  match '/create', to: 'shows#create', via: :post
  match '/show_timing', to: 'shows#show_timing', via: :post
  match '/book', to: 'booking#book', via: :post
  get '/bookings/index', to: "booking#index"
  resources :theaters
  get'/movies/:id/theaters', to: 'theaters#show'
  resources :movies
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :movies do
    member do
      delete :delete_file
    end
  end

  post '/movies' , to: "movies#new"
end
