Rails.application.routes.draw do
  devise_for :users
  resources :teachers
  resources :students
  root to: "home#index"
  # get 'home/index'
  get 'about', to: 'home#about', as: 'about'

end
