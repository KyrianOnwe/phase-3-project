class AddStatusCompleted < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :status, :string
    add_column :todos, :completed, :boolean
  end
end
