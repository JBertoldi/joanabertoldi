Rails.application.routes.draw do
  root to: 'joanas#show'

  resources :joanas, only: %i[show] do
    resources :repos, only: %i[index show]
  end
end
