# frozen_string_literal: true
class Trail < ApplicationRecord
  belongs_to :user
  validates :trail_name, :location, :comment, presence: true
end
