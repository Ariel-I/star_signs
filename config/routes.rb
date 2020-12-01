Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations', :omniauth_callbacks => 'callbacks'}
  root to: 'application#welcome'
   
  devise_scope :user do 
    get 'login', to: 'devise/sessions#new', as: 'login'
    get 'signup', to: 'devise/registrations#new', as: 'signup'
  end 
  
  resources :constellations, only: [:index, :new, :create, :show]
  get '/constellation', to: 'constellations#show', as: 'profile'
end
