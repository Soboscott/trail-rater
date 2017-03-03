# frozen_string_literal: true
class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comments, :user_id
  # user :user_id
end
