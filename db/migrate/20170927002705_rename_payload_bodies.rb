class RenamePayloadBodies < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :payload_bodies, :request_bodies
  end

  def self.down
    rename_table :request_bodies, :payload_bodies
  end
end
