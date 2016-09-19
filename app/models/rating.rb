# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  rating_id  :integer
#  user_id    :integer
#  job_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  body       :text
#  score      :integer
#

class Rating < ActiveRecord::Base
    belongs_to :user
    belongs_to :job
end
