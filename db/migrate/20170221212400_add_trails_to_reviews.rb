# frozen_string_literal: true
class AddTrailsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :trail, foreign_key: true, index: true
  end
end
