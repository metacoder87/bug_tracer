Rails.application.routes.draw do
  root to: 'bugs#index'
  devise_for :users

  resources :bugs do
    resources :comments
    collection do
      get :active
      get :archive
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
