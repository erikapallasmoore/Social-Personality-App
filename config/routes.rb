Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  root 'personalities#index'

  mount Commontator::Engine => '/commontator'

  get 'search' => 'personalities#search'

    resources :users

    resources :personalities
end
