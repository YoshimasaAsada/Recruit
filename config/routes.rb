Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/my_page', to: 'users#show'
  resources :resumes, only: [:index]
  resources :about_myselves, only: [:create, :new, :update]
  resources :gakuchikas, only: [:create, :new, :update]
  get '/interviews/my_page', to: 'interviews#show'
  resources :interviews, only: [:index, :show, :create] do
    # patch '/favorites', to: 'favorites#update'
    resources :favorites, only: [:update]
    resource :favorites, only: [:create, :destroy]
  end
  resources :schedules, only: [:create, :show, :edit]
end
