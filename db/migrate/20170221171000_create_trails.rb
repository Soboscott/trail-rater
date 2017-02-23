# frozen_string_literal: true
class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.string :name

      t.timestamps
    end
  end
end
