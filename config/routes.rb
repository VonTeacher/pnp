Rails.application.routes.draw do
  resources :locations, only: [:index, :new]
  resources :dungeons, controller: 'locations', type: 'Dungeon', only: [:index, :show]
  resources :geographies, controller: 'locations', type: 'Geography', only: [:index, :show]
  resources :municipalities, controller: 'locations', type: 'Municipality', only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
