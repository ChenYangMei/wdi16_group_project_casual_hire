class CreateJobsCategories < ActiveRecord::Migration
  def change
    create_table :categories_jobs do |t|
      t.integer :job_id
      t.integer :category_id
    end
  end
end
