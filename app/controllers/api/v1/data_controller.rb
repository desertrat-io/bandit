# frozen_string_literal: true
module Api
  module V1
    class DataController < ApiController
      before_action :doorkeeper_authorize!
      respond_to? :json
      def show
        respond({ rails_docs: 'suck' })
      end
    end
  end
end
