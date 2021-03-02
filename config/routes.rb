# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  root to: 'bandit#index'
  namespace :api do
    namespace :v1 do
      resources :accounts
      match 'data' => 'data#show', via: [:get]
    end
  end
end
