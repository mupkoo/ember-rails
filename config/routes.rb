Rails.application.routes.draw do
  get '/*dummy', to: 'home#index'
  root to: 'home#index'
end
