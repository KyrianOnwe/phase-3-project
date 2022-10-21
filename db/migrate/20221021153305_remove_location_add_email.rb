class RemoveLocationAddEmail < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :location, :string
    add_column :users, :email, :string
  end
end
