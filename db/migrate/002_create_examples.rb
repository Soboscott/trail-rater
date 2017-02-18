# frozen_string_literal: true
class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.text :text, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
