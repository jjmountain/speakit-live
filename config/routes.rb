Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students
  root to: 'lessons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons, only: [ :index, :show, :new, :create, :update ]  do
    resources :attendances, only: [ :create ]
    resources :time_trials, only: [ :create, :show, :update ]
  end
  resources :time_trials, only: [ :index ]
  resources :attendances, only: [ :destroy ]
end
