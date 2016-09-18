class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|

      t.string  :task_title
      t.text    :task_description
      t.string  :task_location
      t.date    :due_date
      t.time    :start_time
      t.integer :workers_required
      t.float   :budget
      t.text    :images
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
