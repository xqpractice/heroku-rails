Rails.application.routes.draw do
  get 'welcome/index'

  get 'email/index'
  get 'email/hello'
  get 'email/user'
  get 'email/mailgun'
  post 'email/send' => 'email#send_email'

  resources :articles

  root 'welcome#index'
end
