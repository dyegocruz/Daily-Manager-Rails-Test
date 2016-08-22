class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :yesterday
      t.string :today
      t.string :impediments
      t.date :task_date

      t.timestamps null: false
    end
  end
end
