Rails.application.routes.draw do
  namespace :watch do
    get 'case/show'
    get 'case/index', as: :listing
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
