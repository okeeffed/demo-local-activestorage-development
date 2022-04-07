Rails.application.routes.draw do
  resource :users, only: %i[index create new show]

  # Defines the root path route ("/")
  # root 'users#index'
end
