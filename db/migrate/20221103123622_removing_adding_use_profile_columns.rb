class RemovingAddingUseProfileColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :use_profiles, :name, :string
    add_column :use_profiles, :firstName, :string
    add_column :use_profiles, :lastName, :string
  end
end
