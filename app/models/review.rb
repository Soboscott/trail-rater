# frozen_string_literal: true
class Review < ApplicationRecord
  belongs_to :user
  validates :trail_id, :user, presence: true
end
