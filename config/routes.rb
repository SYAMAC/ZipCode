Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#top'
  get 'top', to: 'pages#top'
  post 'search_by_postal_code', to: 'pages#search_by_postal_code'
  post 'search_by_address', to: 'pages#search_by_address'
end
