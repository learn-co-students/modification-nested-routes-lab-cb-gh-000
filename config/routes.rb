Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:edit, :index, :new, :show]
  end
  resources :songs
end
