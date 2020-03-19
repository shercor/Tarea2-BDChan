Rails.application.routes.draw do
  root 'sections#index', as: "home"
  resources :sections
end
