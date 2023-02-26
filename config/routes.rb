Rails.application.routes.draw do
  root to: "great_monuments#home"

  resources :greatmonuments, only: [:show, :index] do
    resources :eras, only: [:show, :index]
  end
  delete 'great_monuments', to: 'great_monuments#remove'
  post 'great_monuments', to: 'great_monuments#add'
end
