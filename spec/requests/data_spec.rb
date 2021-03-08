# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Data', type: :request do
  describe 'GET /show' do
    let(:application) { FactoryBot.create(:application) }
    let(:token)       { FactoryBot.create(:token, application: application) }

    it 'returns info about crappy docs' do
      get '/api/v1/data', headers: { 'Authorization': "Bearer #{token.token}" }
      expect(json).not_to be_empty
      expect(json).to be_a Hash
      expect(json['rails_docs']).to match(/suck/)
    end
  end
end
