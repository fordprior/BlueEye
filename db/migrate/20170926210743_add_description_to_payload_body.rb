class AddDescriptionToPayloadBody < ActiveRecord::Migration[5.0]
  def change
    add_column :payload_bodies, :description, :text
  end
end
