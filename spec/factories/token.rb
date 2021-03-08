# frozen_string_literal: true

FactoryBot.define do
  factory :token, class: 'Doorkeeper::AccessToken' do
    application
  end
end