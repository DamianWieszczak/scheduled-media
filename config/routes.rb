Rails.application.routes.draw do
  root "main#index"
  
  # Get / about
  get "about-us", to: "about#index", as: :about



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end