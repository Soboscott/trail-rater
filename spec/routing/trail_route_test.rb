# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'routes for trail' do
  # sends the trail to index
  it 'routes GET /trail to the trail#index action' do
    expect(get('trail')).to route_to('trail#index')
  end
  # routes to index
  it 'routes GET /trail/:id to the trail#show action' do
    expect(get('trail/1')).to route_to(controller: 'trail',
                                       action: 'show',
                                       id: '1')
  end

  it 'routes DELETE /trail/:id to the trail#destroy action' do
    expect(delete('trail/1')).to route_to(controller: 'trail',
                                          action: 'destroy',
                                          id: '1')
  end

  it 'routes PATCH /trail/:id to the trail#update action' do
    expect(patch('trail/1')).to route_to(controller: 'trail',
                                         action: 'update',
                                         id: '1')
  end

  it 'routes POST /trail to the trail#create action' do
    expect(post('/trail')).to route_to(controller: 'trail',
                                       action: 'create')
  end
end
