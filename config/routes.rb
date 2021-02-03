Rails.application.routes.draw do
  root to: 'joanas#show'

  resources :joanas, only: %i[show], param: :slug do
    resources :repos, only: %i[index show], param: :slug
  end
end
