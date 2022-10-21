class RemoveOwnerId < ActiveRecord::Migration[6.1]
  def change
    remove_column :todos, :owner_id, :integer
  end
end
