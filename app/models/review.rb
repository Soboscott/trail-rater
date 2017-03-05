# frozen_string_literal: true
class Review < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :date_seen, presence: true
  validates :location, presence: true
  validates :comment, presence: true
end
