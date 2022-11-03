class RemovingAddingUseProfileEmailColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :use_profiles, :email, :string
  end
end
