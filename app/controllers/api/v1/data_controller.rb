module Api
  module V1
    class DataController < BaseController
      def show
        respond_with({ super_secret: 'oauth_data' })
      end
    end
  end
end
