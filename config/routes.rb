Rails.application.routes.draw do
  root 'pages#home'
  get '/post', to: 'post#index', as: "post"
end
