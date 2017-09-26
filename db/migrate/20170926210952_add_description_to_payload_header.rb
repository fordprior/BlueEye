class AddDescriptionToPayloadHeader < ActiveRecord::Migration[5.0]
  def change
    add_column :payload_headers, :description, :text
  end
end
