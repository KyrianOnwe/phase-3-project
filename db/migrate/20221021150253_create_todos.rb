class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :task
      t.string :due_date
      t.integer :owner_id
      t.timestamps 
    end
  end
end
