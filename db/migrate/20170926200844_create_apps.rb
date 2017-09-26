class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.references :team, foreign_key: true, null: false
      t.text :name, null: false
      t.text :repo_url

      t.timestamps
    end
  end
end
