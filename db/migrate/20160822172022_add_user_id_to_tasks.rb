class AddUserIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :user_id, :integer
    #add_index :tasks, :user_id
    add_index :tasks, [:user_id, :task_date], :unique => true
  end
end
