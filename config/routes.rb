Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :locations, only: [:index, :new, :show, :create]

  resources :dungeons, controller: 'locations', type: 'Dungeon'
  resources :geographies, controller: 'locations', type: 'Geography'
  resources :municipalities, controller: 'locations', type: 'Municipality'
end
