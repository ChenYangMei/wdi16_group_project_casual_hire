class Category < ActiveRecord::Base
  has_and_belongs_to_many :jobs

# def get_sorted_jobs
#       self.jobs.sort_by do |j|
#           j.get_upvotes.size
#       end
#   end
#
#   def get_sorted_comments
#       self.comments.sort_by do |c|
#           c.get_upvotes.size
#       end
#   end

end
