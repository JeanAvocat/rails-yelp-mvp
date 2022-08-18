Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]  #le chemin d'accès vers les reviews nécessite de passer par l'id du restaurant. Donc on inclue le "resources :reviews" dans les routes du restaurant
  end
end
