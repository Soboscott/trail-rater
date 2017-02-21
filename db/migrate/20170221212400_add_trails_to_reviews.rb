# frozen_string_literal: true
class AddTrailsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :trail, :refrences
  end
end
