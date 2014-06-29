Askme::Application.routes.draw do
  root to: 'pages#main'
  resources :users
  resources :sessions, only: [:destroy, :create]
  get '/test', to: 'pages#test', as: 'test'
end
