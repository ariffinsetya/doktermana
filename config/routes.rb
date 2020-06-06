Rails.application.routes.draw do
  resources :employments
  resources :scheduled_appointments
  resources :schedules
  resources :doctor_shifts
  resources :hospitals
  root to: 'users#index' 
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end
  resources :users
  resources :admins, :path => 'users'
  resources :doctors, :path => 'users'
  resources :patients, :path => 'users'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
