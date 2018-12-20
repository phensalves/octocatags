class CreateGithubUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :github_users do |t|
      t.string :login
      t.integer :github_id

      t.timestamps
    end
  end
end
