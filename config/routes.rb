Rails.application.routes.draw do
  resources :publications
  root 'sections#index', as: "home"
  resources :sections
end
