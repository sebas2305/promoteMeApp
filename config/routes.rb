Rails.application.routes.draw do
  resources :laborals
  resources :mentals
  resources :companies
  resources :enviroments
  devise_for :users
  root to: 'home#index'
  get "/saludemocional" => "survey#index"
  get "/climalaboral" => "menu#index"
  get "/results" => "results#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
