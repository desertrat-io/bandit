# frozen_string_literal: true
module Api
  module V1
    class BaseController < ActionController::API
      respond_to :json
    end
  end
end
