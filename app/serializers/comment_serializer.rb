# frozen_string_literal: true
class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :refrences, :location, :string, :trail_name, :string,
             :comments, :string
end
