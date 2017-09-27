class RenamePayloadHeaders < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :payload_headers, :request_headers
  end

  def self.down
    rename_table :request_headers, :payload_headers
  end
end
