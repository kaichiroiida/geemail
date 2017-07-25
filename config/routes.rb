Rails.application.routes.draw do
  resources :gee_mails
  root 'gee_mails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
