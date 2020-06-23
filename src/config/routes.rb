Rails.application.routes.draw do
  get 'admin/index'
  resources :videotheques
  root to: 'home#index'
  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :films

  resources :locations
end
