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
  has_many :comments
  # has_and_belongs_to_many :categorys
end
