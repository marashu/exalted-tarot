Rails.application.routes.draw do
  get 'spreads/index'
  resources :spreads do
    get :show
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'spreads#index'
end
