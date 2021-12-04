# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      ## Database authenticatable
    t.integer :user_id
    t.string :title
    t.text :body
    t.timestamps


    end
  end
end
