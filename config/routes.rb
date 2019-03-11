Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students
  root to: 'lessons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # new routes since addition of courses
  resources :courses, only: [ :index, :show, :new, :create, :update ]  do
    resources :lessons, only: [ :new, :create ]
  end
  post 'time_trial/:id/start', to: 'time_trials#start', as: :time_trial_start
# old routes
  resources :lessons, only: [ :index, :show, :update ]  do
    resources :attendances, only: [ :create ]
    resources :time_trials, only: [ :create, :show, :update ]
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
