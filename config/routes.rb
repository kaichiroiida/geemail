Rails.application.routes.draw do
  root 'gee_mails#index'
  devise_for :users
  resources :gee_mailer do
      get 'sendmail_confirm'
  end
  #match 'send_mail', :to => 'gee_mails#mail_send' # ルーティングないから、ページ表示できねえって言われる
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
