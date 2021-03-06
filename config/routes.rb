Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'

  get '/home' => 'static_pages#home'

  resource :users, only: [:show]
  resource :registrations
  resource :sessions
  resource :subscriptions
  resource :devices
end
