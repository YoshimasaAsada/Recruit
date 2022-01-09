Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/my_page', to: 'users#show'
  resources :resumes, only: [:index]
  resources :about_myselves, only: [:create, :new, :update]
  resources :gakuchikas, only: [:create, :new, :update]

end
