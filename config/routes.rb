WdiRockr::Application.routes.draw do
  root :to => "static_pages#index"

  resources :venues, only:[:new, :create]
  resources :concerts, only:[:new, :create]
end
