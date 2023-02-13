Rails.application.routes.draw do
  devise_for :admins
  root 'contacts#index'

  resources :contacts
end
