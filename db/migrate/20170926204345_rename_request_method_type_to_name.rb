class RenameRequestMethodTypeToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :request_methods, :type, :name
  end
end
