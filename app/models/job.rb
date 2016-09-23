# == Schema Information
#
# Table name: jobs
#
#  id               :integer          not null, primary key
#  task_title       :string
#  task_description :text
#  task_location    :string
#  due_date         :date
#  start_time       :time
#  workers_required :integer
#  budget           :float
#  images           :text
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :user
  has_many :applicants
  has_many :comments
  has_and_belongs_to_many :categories
  has_many :ratings, as: :rateable

  enum status: [:proposal, :in_progress, :completed]

  # geocoder
  geocoded_by :task_location
  after_validation :geocode, :if => :task_location_changed?

  def slugs
    slugs_arr = self.categories.map do |c|
      c.slug
    end
    slugs_arr.join(" ")
  end

  def proposal?
    self.status == "proposal"
  end

  def in_progress?
    self.status == "in_progress"
  end

  def completed?
    self.status == "completed"
  end

  def status_c
    self.status.capitalize
  end

  # Awesome contribution by Badger the Legend! Creating an applicant method which finds the employee(returns an object) who was chosen by the employer to do the job!
  def applicant
    User.find(Applicant.find(self.applicant_id).user_id) if self.applicant_id
  end

end
 
