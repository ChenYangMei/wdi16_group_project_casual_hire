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
    belongs_to :user
    belongs_to :job
    belongs_to :rateable, polymorphic: true

    def is_user_rating?
        rateable_type == "User"
    end

    def is_job_rating?
        rateable_type == "Job"
    end

    def get_job
        if is_job_rating?
            return self.rateable
        end
        false
    end

    def get_user
        if is_user_rating?
            return self.rateable
        end
        false
    end
end
