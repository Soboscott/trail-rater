# frozen_string_literal: true
class AddUsersToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :user, :refrences
  end
end
