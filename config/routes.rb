Rails.application.routes.draw do
  get 'locations', to: 'locations#index'
  resources :locations, except: [:index]
  resources :dungeons, controller: 'locations', type: 'Dungeon', only: [:index, :show]
  resources :geographies, controller: 'locations', type: 'Geography', only: [:index, :show]
  resources :municipalities, controller: 'locations', type: 'Municipality', only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
