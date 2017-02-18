# frozen_string_literal: true
class TrailSerializer < ActiveModel::Serializer
  attributes :id, :trail_name, :location, :comments
end
