class CreatePayloads < ActiveRecord::Migration[5.0]
  def change
    create_table :payloads do |t|
      t.references :app, foreign_key: true, null: false
      t.text :name, null: false
      t.text :description
      t.text :request_url, null: false
      t.references :request_method, foreign_key: true, null: false
      t.references :request_environment, foreign_key: true, null: false

      t.timestamps
    end
  end
end
