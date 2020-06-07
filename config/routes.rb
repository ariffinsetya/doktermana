Rails.application.routes.draw do
  resources :employments
  resources :scheduled_appointments
  resources :schedules
  resources :doctor_shifts
  resources :hospitals
  root to: 'home#index' 
  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  resources :admins, :path => 'users'
  resources :doctors, :path => 'users'
  resources :patients, :path => 'users'

  get 'bookings', to: 'bookings#index'
  get 'bookings/mine', to: 'bookings#show'
  post 'bookings', to: 'bookings#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
