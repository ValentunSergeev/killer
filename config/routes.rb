Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :games do
    member do
      get 'join'
      get 'start'
    end
  end
  get '*uid/games', to: 'users#games', as: :user_games
  get '*uid/', to: 'users#profile', as: :user_profile
  root 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
