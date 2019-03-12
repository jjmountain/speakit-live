Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # new routes since addition of courses
  resources :courses, only: [ :index, :show, :new, :create, :update ]  do
    resources :lessons, only: [ :new, :create ]
  end
  post 'time_trials/:id/start', to: 'time_trials#start', as: :time_trial_start
  patch 'time_trials/:id/update_audio', to: 'time_trials#update_audio', as: :update_audio
  patch 'time_trials/:id/update_seconds', to: 'time_trials#update_seconds', as: :update_seconds
  patch 'time_trials/:id/', to: 'time_trials#reset_trial', as: :reset_trial
# old routes
  resources :lessons, only: [ :index, :show, :update ]  do
    resources :attendances, only: [ :create ]
    resources :time_trials, only: [ :create, :show, :update ]
    resources :students, only: [ :show ]
  end
  resources :time_trials, only: [ :index ] do
    resources :mistakes, only: [ :create ]
  end
  resources :attendances, only: [ :destroy ] do
    member do
      post 'unattend'
    end
  end

  resources :homeworks, only: [ :update ]
end
