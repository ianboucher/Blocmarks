Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users, only: :show

  authenticated :user do
    root 'welcome#index', as: :authenticated_root # change root for signed-in users
  end

  get 'welcome/about'

  root 'welcome#index'

end
