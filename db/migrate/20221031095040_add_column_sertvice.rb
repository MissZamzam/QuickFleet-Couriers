class AddColumnSertvice < ActiveRecord::Migration[7.0]
  def change
    add_column :deliveries, :service_type, :string
  end
end
