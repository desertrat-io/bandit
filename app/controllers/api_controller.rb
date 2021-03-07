class ApiController < ActionController::API
  include ApiResponse
  respond_to? :json
end
