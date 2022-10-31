class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :deliveries, :package_type, :string
  end
end
