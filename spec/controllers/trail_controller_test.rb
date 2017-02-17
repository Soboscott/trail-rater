
# frozen_string_literal: true
require 'rails_helper'

RSpec.describe TrailsController do
  def trail_params
    {
      trail_name: 'Long Trail',
      location: ' Big Bear Country'
    }
  end

  def trail
    Trail.first
  end

  before(:all) do
    Trail.create!(trail_params)
  end
  # this delets the test data
  after(:all) do
    Trail.delete_all
  end
  # this looks up the data to test
  describe 'GET index' do
    before(:each) { get :index }

    it 'is succesful' do
      expect(response.status).to eq(200)
    end
    # this renders the db to json
    it 'renders a JSON response' do
      trails_collection = JSON.parse(response.body)
      expect(trails_collection).not_to be_nil
      expect(trails_collection.first['trail_name']).to eq(article['trail_name'])
    end
  end

  describe 'GET show' do
    before(:each) { get :show, params: { id: trail.id } }
    it 'is successful' do
      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      parsed_article = JSON.parse(response.body)
      expect(parsed_article).not_to be_empty
    end
  end

  describe 'DELETE destroy' do
    it 'is successful and returns an empty response' do
      delete :destroy, id: trail.id
      expect(response.status).to eq(204)
      expect(response.body).to be_empty
    end
  end

  describe 'PATCH update' do
    def trail_diff
      { trail_name: 'Short Trail' }
    end

    before(:each) do
      patch :update, params: { id: trail.id, trail: trail_diff }
    end

    it 'is successful' do
      expect(response.status).to eq(204)
    end

    it 'returns an empty response' do
      expect(response.body).to be_empty
    end
    it 'updates an article' do
      expect(trail[:traail_name]).to eq(trail_diff[:trail_name])
    end
  end
  describe 'POST create' do
    def new_trail
      {
        trail_name: 'Just Right trail_name',
        loction: 'Chicago'
      }
    end
    before(:each) do
      post :create, params: { trail_name: new_trail }, format: :json
    end

    it 'is successful' do
      expect(response.status).to eq(201)
    end

    it 'renders a JSON response' do
      trail_response = JSON.parse(response.body)
      expect(trail_response).not_to be_nil
    end
  end
end
