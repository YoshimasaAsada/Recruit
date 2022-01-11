Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/my_page', to: 'users#show'
  resources :resumes, only: [:index]
  resources :about_myselves, only: [:create, :new, :update]
  resources :gakuchikas, only: [:create, :new, :update]
  get '/interviews/my_page', to: 'interviews#show'
  get '/interviews/practice', to: 'interviews#practice'
  get '/interviews/practice_do', to: 'interview_practices#practice_do'
  delete '/interviews/practice_do', to: 'interview_practices#destroy_all'
  resources :interviews, only: [:index, :show, :create] do
    resources :favorites, only: [:update]
    resource :favorites, only: [:create, :destroy]
    resource :interview_practices, only: [:create, :destroy]
  end
  resources :schedules, only: [:create, :show, :edit] do
    resources :reviews, only: [:create, :new, :edit, :update, :show]
  end
end
