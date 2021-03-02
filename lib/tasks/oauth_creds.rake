desc 'Create an id/secret pair and persist'

namespace :oauth do

  task client: :environment do
    puts 'Creating a new client...'
    app_client = Doorkeeper::Application.create(name: 'bandit_tester', redirect_uri: 'urn:ietf:wg:oauth:2.0:oob',
                                   scopes: %w[read write])
    puts "Client created with id: #{app_client.uid} and secret: #{app_client.plaintext_secret}"
  end
end
