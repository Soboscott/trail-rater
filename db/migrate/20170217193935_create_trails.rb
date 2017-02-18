# frozen_string_literal: true
class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.string :trail_name
      t.string :location
      t.string :comments

      t.timestamps
    end
  end
end
