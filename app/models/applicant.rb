class Applicant < ActiveRecord::Base
  belongs_to :user
  belongs_to :job

  delegate :name, :to => :user


  # Very cool stuff Jack showed us, please DO NOT delete! It allows you to call applicant.name(name is a key/attribute in user which is associated with applicant. )
  delegate :name, :to => :user

end
