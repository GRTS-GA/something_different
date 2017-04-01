Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

resources :users
 resources :events
resources :comments

# match '/events/search', to: 'events#search', as: :search
get '/homes',      to: 'homes#index', as: :homes
post '/homes',      to: 'homes#search'
get '/homes/searchByClass',      to: 'homes#searchByClass', as: :event_class
get '/homes/show',      to: 'homes#show', as: :event_details
get '/homes/saveEvent',      to: 'homes#saveEvent', as: :save_event
# get 'homes/renderEvent', to: 'homes#renderEvent', as: :get_event


root to: "homes#index"

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
