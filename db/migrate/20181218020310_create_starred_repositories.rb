# frozen_string_literal: true

class CreateStarredRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :starred_repositories do |t|
      t.string :github_id
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
