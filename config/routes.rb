Askme::Application.routes.draw do
  root to: 'pages#main'
  resources :users
end
