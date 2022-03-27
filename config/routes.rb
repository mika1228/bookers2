Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "/homes/about" => "homes#about", as: "about"
  resources :books
  resources :users, only: [:index, :show, :edit]
  patch 'books/:id' => 'books#update', as: 'update_book'
  patch 'users/:id' => 'users#update', as: 'update_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
