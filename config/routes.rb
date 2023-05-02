Rails.application.routes.draw do
  root 'api/greetings#index'
  
  namespace :api do
    resources :greetings, only: [:index]
    get '/greetings/random', to: 'greetings#random'
  end
end
