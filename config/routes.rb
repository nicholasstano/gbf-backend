Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'
  get '/autologin', to: 'auth#autologin'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :moves
      resources :feedbacks
      resources :observations
      resources :action_steps
      resources :teacher_coaches
    end
  end
  root to: 'home#index'

end