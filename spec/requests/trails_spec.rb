# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Trails', type: :request do
  describe 'GET /trails' do
    it 'works! (now write some real specs)' do
      get trails_path
      expect(response).to have_http_status(200)
    end
  end
end
