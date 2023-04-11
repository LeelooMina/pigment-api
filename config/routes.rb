# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  require 'sidekiq/web'

  scope :monitoring do
    # Sidekiq Basic Auth from routes on production environment
    if Rails.env.production?
      Sidekiq::Web.use Rack::Auth::Basic do |username, password|
        ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username),
                                                    ::Digest::SHA256.hexdigest(Rails.application.credentials.sidekiq[:auth_username])) &
          ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password),
                                                      ::Digest::SHA256.hexdigest(Rails.application.credentials.sidekiq[:auth_password]))
      end
    end
    mount Sidekiq::Web, at: '/sidekiq'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      namespace :users do
        post :login
        delete :logout
        get :me
        post :create
        get :show
      end

      resources :posts do 
        resources :comments
      end
      resources :comment_post, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
      resources :follows, only: [:create, :destroy]
      resources :palletes
      resources :palette_posts
      resources :paints
      resources :paint_palettes, only: [:create, :destroy]
      resources :swatches
      resources :color_families, only: [:create, :destroy]
      resources :pigments
      resources :color_family_pigments, only: [:create, :destroy]
      resources :paint_pigments, only: [:create, :destroy]

      
    end
  end
end
