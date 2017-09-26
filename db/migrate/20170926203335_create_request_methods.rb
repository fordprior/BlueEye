class CreateRequestMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :request_methods do |t|
      t.string :type, null: false

      t.timestamps
    end
  end
end
