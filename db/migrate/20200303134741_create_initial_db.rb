# frozen_string_literal: true

class CreateInitialDb < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps # shorthand for created_at and updated_at
    end
    create_table :nurses do |t|
      t.integer :user_id
      t.timestamps
    end

    create_table :head_nurses do |t|
      t.integer :user_id
      t.integer :nurse_id
      t.timestamps
    end

    create_table :patients do |t|
      t.integer :user_id
    end

    create_table :nurse_patients do |t|
      t.integer :nurse_id
      t.integer :patient_id
      t.timestamps
    end
  end
end
