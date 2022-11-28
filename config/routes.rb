Rails.application.routes.draw do
  get 'booking/new'
  get "booking/new/:movie_id", to: "booking#sorttheater"
  get 'booking/new/:movie_id/:theater_id', to: 'booking#new'
  get 'shows/new'
  match '/create', to: 'shows#create', via: :post
  match '/show_timing', to: 'shows#show_timing', via: :post
  match '/book', to: 'booking#book', via: :post
  get '/bookings/index', to: "booking#index"
  get '/booking/:movie_id', to: 'booking#theater'
  resources :theaters
  get'/movies/:id/theaters', to: 'theaters#show'
  post '/theatre_booking_redirect/:movie_id/:theater_id', to: "theaters#booking_redirect"
  resources :movies

  devise_for :users
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  
  get 'home/index'
  root to: "home#index"

  resources :movies do
    member do
      delete :delete_file
    end
  end

  post '/movies' , to: "movies#new"
end
