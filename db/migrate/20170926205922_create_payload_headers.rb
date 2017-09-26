class CreatePayloadHeaders < ActiveRecord::Migration[5.0]
  def change
    create_table :payload_headers do |t|
      t.references :payload, foreign_key: true, null: false
      t.text :key, null: false
      t.text :value, null: false

      t.timestamps
    end
  end
end
