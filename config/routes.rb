# frozen_string_literal: true

Rails.application.routes.draw do

  resources :oauth_clients
  match '/oauth/test_request', via: [:get], to: 'oauth#test_request', as: :test_request
  match '/oauth/token', via: [:post], to: 'oauth#token', as: :token
  match '/oauth/access_token', via: [:get], to: 'oauth#access_token', as: :access_token
  match '/oauth/request_token', via: [:get], to: 'oauth#request_token', as: :request_token
  match '/oauth/authorize', via: %i[get post], to: 'oauth#authorize', as: :authorize
  match '/oauth', via: [:get], to: 'oauth#index', as: :oauth
  devise_for :users

  root to: 'bandit#index'
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  namespace :api do
    resources :accounts
    namespace :v1 do
      match 'data' => 'data#show', via: [:get]
    end
  end

end
