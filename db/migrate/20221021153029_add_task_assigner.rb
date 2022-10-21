class AddTaskAssigner < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :assigned_by, :string
  end
end
