class AddApplicantToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :applicant_id, :integer
  end
end
