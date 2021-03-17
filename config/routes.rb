Rails.application.routes.draw do
  root to: 'home#index'
  get "/pdf", to: 'home#pdf'
end
