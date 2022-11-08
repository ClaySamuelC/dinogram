class AddStatusToDinopost < ActiveRecord::Migration[7.0]
  def change
    add_column :dinoposts, :status, :string
  end
end
