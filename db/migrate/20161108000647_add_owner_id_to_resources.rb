class AddOwnerIdToResources < ActiveRecord::Migration
  def change
    add_column :resources, :owner_id, :string
  end
end
