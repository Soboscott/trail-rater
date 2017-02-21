# frozen_string_literal: true
class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :user, null: false
      t.string :location
      t.string :trail_name
      t.string :comments

      t.timestamps
    end
  end
end
