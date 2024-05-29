Rails.application.routes.draw do
  # Devise
  devise_for :users

  # Homepage
  root 'pages#home'

  # Sidekiq Web UI, only for admins
  require "sidekiq/web"

  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
