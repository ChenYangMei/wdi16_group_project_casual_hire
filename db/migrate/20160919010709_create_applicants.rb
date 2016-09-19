class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|

      t.integer :quote
      t.text :description
      t.integer :job_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
