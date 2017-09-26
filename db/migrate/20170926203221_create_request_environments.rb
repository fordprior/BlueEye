class CreateRequestEnvironments < ActiveRecord::Migration[5.0]
  def change
    create_table :request_environments do |t|
      t.text :name, null: false

      t.timestamps
    end
  end
end
