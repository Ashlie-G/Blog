Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles do
    resources :comments
  end
  #^^ this line replaces everything below!
  # get '/articles', to: 'articles#index'
  # get 'articles/new', to: 'articles#new', as: :new_article
  # get '/articles/:id', to: 'articles#show', as: :article
  # post '/articles', to: 'articles#create'
  # get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch '/articles/:id', to: 'articles#update'
  # delete '/articles/:id', to: 'articles#destroy'
end
