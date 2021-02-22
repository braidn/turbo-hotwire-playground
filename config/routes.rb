Rails.application.routes.draw do
  namespace :watch do
    resources :cases, only: [:show]
  end
  root 'watch/cases#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
