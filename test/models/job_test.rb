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

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
