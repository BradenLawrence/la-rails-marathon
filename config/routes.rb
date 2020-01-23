Rails.application.routes.draw do
  root "houses#index"
  resources :houses, only: [:index, :new, :create, :show] do
    resources :members, only: [:new, :create]
  end

end
