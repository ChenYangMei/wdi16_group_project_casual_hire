class Applicant < ActiveRecord::Base
  belongs_to :user
  belongs_to :job

  delegate :name, :to => :user
end
