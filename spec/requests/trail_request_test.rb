# frozen_string_literal: true
require 'rails_helper'
# calls method describe on rRSpec class
# passes a string to describe what text we are going to test

RSpec.describe 'Trails API' do
  #  defines artical params that return an object
  # with trail_name and content
  def trail_params
    {
      trail_name: 'Long Trail',
      location: 'Big Bear Country'
    }
  end

  # defines a function article that returns all trails
  def trails
    Trail.all
  end

  # returns a function article that returns first trails
  def article
    Trail.first
  end

  # befor you run all(any) the tests create an article params

  before(:all) do
    Trail.create!(trail_params)
  end
  #  after all tests are done delete garbage data created
  after(:all) do
    Trail.delete_all
  end
  # tells us we are going to describs a GET request
  describe 'GET /trails' do
    # a GET request to /trails should list all the trails
    it 'lists all trails' do
      # makes a GET request to your API to /trails
      get '/trails'
      # I expect the responseto be Ccode) 2xx
      expect(response).to be_success
      # parsed the json response into a ruby hash
      # so we can test it (json isjust strings)
      trails_response = JSON.parse(response.body)
      # expects the response length to be the the same as number of trails
      expect(trails_response.length).to eq(trails.count)
      # expect the first article in the response t
      # o be the first article in the db
      expect(trails_response.first['trail_name']).to eq(article['trail_name'])
    end
  end

  describe 'GET /trails/:id' do
    it 'shows one article' do
      get "/trails/#{trail.id}"

      expect(response).to be_success

      trail_response = JSON.parse(response.body)
      expect(trail_response['id']).to eq(article['id'])
      expect(trail_response['trail_name']).to eq(article['trail_name'])
    end
  end

  describe 'DELETE /trails/:id' do
    it 'deletes a trail' do
      trail_id = trail.id
      delete"/trails/#{trail.id}"

      expect(response).to be_success
      expect(response.body).to be_empty
      expect { Trail.find(trail_id) }
        .to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  describe 'POST /trails' do
    def new_trail
      {
        trail_name: 'Just Right Trail',
        location: 'Chicago'
      }
    end
    it 'creates a trail' do
      post '/trails/', params: { trail_name: new_trail }

      expect(response).to be_success

      trail_response = JSON.parse(response.body)
      expect(trail_response['id']).not_to be_nil
      expect(trail_response['trail_name']).to eq(new_trail[:trail_name])
    end
  end

  describe 'PATCH /trails/:id' do
    def trail_diff
      { trail_name: 'Short Trail' }
    end

    it 'updates a trail' do
      patch "/trails/#{trail.id}", params: { trail_name: trail_diff }

      expect(response).to be_success

      expect(trail[:trail_name]).to eq(trail_diff[:trail_name])
    end
  end
end
