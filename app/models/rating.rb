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
#

class Rating < ActiveRecord::Base
    belongs_to :rateable, polymorphic: true
end
