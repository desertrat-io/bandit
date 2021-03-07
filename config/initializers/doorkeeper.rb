# frozen_string_literal: true

Doorkeeper.configure do

  orm :active_record

  api_only

  base_controller 'ActionController::API'

  hash_application_secrets using: '::Doorkeeper::SecretStoring::BCrypt'

  grant_flows %w[client_credentials]

end
