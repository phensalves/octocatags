class CreateStarredRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :starred_repositories do |t|
      t.string :github_id
      t.string :name
      t.string :description
      t.string :url
      t.string :language
      t.references :github_users, foreign_key: true
    end
  end
end
