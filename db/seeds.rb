# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u1 = User.create :name => "Andrew", :email => "andrew@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 0, :image =>"s42z35fu6lgw8rprmblu"
u2 = User.create :name => "Arpan", :email => "arpan@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2
u3 = User.create :name => "Yangmei", :email => "yangmei@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u4 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2
u5 = User.create :name => "Wolf", :email => "wolf@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u6 = User.create :name => "Blade", :email => "blade@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2
u7 = User.create :name => "Blade", :email => "blade@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u8 = User.create :name => "Blade", :email => "blade@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2
u9 = User.create :name => "Samit", :email => "samit@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u10 = User.create :name => "Howie", :email => "howie@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2

p "Total users :#{User.all.count}"

Job.destroy_all

j1 = Job.create :task_title =>"Handyman", :task_description =>"Change all the taps",     :task_location => "Penrith", :due_date => "2016/09/24", :budget => 45.34
j2 = Job.create :task_title =>"Home & Garden", :task_description =>"Mow the lawn",     :task_location => "Sydney", :due_date => "2016/09/30", :budget => 90.00
j3 = Job.create :task_title =>"Laundry", :task_description =>"Wash the clothes",     :task_location => "Sydney", :due_date => "2016/09/29", :budget => 90.00
j4 = Job.create :task_title =>"Internet", :task_description =>"Set up my internet",     :task_location => "Manly", :due_date => "2016/10/02", :budget => 70.00
j5 = Job.create :task_title =>"Survey", :task_description =>"Phone up for surveys",     :task_location => "Bondi", :due_date => "2016/10/02", :budget => 50.00
j6 = Job.create :task_title =>"Bricklaying", :task_description =>"Build my house",     :task_location => "North Sydney", :due_date => "2016/09/24", :budget => 70.00
j7 = Job.create :task_title =>"Surfin Lesson", :task_description =>"Mow the lawn",     :task_location => "North Manly", :due_date => "2016/09/24", :budget => 70.00
j8 = Job.create :task_title =>"Cooking", :task_description =>"Babysit",     :task_location => "North Bondi", :due_date => "2016/09/24", :budget => 70.00
j9 = Job.create :task_title =>"Ironing", :task_description =>"Fix a gutter",     :task_location => "North Maroubra", :due_date => "2016/09/24", :budget => 70.00
j10 = Job.create :task_title =>"Bricklaying", :task_description =>"Fix a fence",     :task_location => "North Ryde", :due_date => "2016/09/24", :budget => 70.00

Category.destroy_all
c1 = Category.create :name => "Home & Garden"
c2 = Category.create :name => "Computer & IT"
c3 = Category.create :name => "Handyman"
c4 = Category.create :name => "Delivery & Removals"
c5 = Category.create :name => "Event & Photography"
c6 = Category.create :name => "Marketing & Design"
c7 = Category.create :name => "Business & Admin"
c8 = Category.create :name => "Laundry"
c9 = Category.create :name => "Cleaning"
c10 = Category.create :name => "Fun & Quirky"
c11 = Category.create :name => "Other"

p "Category count: #{Category.all.count}"

p "Total Jobs posted : #{Job.all.count}"
u1.jobs << j1
u3.jobs << j2
u5.jobs << j3
u7.jobs << j4
u5.jobs << j5
u3.jobs << j6
u3.jobs << j7
u3.jobs << j8
u3.jobs << j9
u3.jobs << j10

c1.jobs << j1 <<j3 <<j5
c2.jobs << j2 <<j4 <<j6
c3.jobs << j1 <<j3 <<j5
c4.jobs << j1 <<j3 <<j5
c5.jobs << j1 <<j3 <<j5
c6.jobs << j4 <<j5 <<j6
c7.jobs << j7 <<j8 <<j9
c8.jobs << j10 <<j6 <<j9
c9.jobs << j7 <<j8 <<j9

Comment.destroy_all
co1 = Comment.create({:body => "What are the specs?", :user_id => u2.id, :job_id => j1.id})
co2 = Comment.create({:body => "Have you got more detail?", :user_id => u4.id, :job_id => j2.id})
co3 = Comment.create({:body => "I'd love to help out. I've submitted a quote", :user_id => u2.id, :job_id => j3.id})
co4 = Comment.create({:body => "Tell em their dreaming", :user_id => u6.id, :job_id => j4.id})
co5 = Comment.create({:body => "I like the sounds of that", :user_id => u4.id, :job_id => j5.id})
co6 = Comment.create({:body => "Tell em their dreaming", :user_id => u2.id, :job_id => j6.id})
co6 = Comment.create({:body => "Check out my profile!!!", :user_id => u4.id, :job_id => j7.id})
co7 = Comment.create({:body => "Check out my profile!!!", :user_id => u2.id, :job_id => j8.id})
co8 = Comment.create({:body => "Check out my profile!!!", :user_id => u8.id, :job_id => j9.id})
co9 = Comment.create({:body => "Check out my profile!!!", :user_id => u4.id, :job_id => j10.id})
co10 = Comment.create({:body => "Check out my profile!!!", :user_id => u2.id, :job_id => j6.id})
co11 = Comment.create({:body => "Check out my profile!!!", :user_id => u6.id, :job_id => j4.id})

p "Comments count: #{Comment.all.count}"

Applicant.destroy_all
a1 = Applicant.create :quote => 70.00, :description => "I'd like to complete this job for you. I'm awesome", :user_id => u2.id
a2 = Applicant.create :quote => 50.00, :description => "Pick me. I'm awesome", :user_id => u4.id
a3 = Applicant.create :quote => 60.00, :description => "I got what you need! I'm awesome", :user_id => u6.id
a4 = Applicant.create :quote => 77.00, :description => "I'm happy to help. I'm awesome", :user_id => u8.id
a5 = Applicant.create :quote => 44.00, :description => "I'm really awesome", :user_id => u10.id
a6 = Applicant.create :quote => 34.00, :description => "Piece of cake", :user_id => u2.id
a7 = Applicant.create :quote => 30.00, :description => "Let me know if you have any further questions", :user_id => u4.id

p "Applicants count: #{Applicant.all.count}"

j1.applicants << a1 << a2 << a3
j2.applicants << a4 << a5 << a6
j3.applicants << a5 << a6 << a7
j4.applicants << a2 << a3 << a4
j5.applicants << a1 << a7 << a5
j6.applicants << a3 << a2 << a7
j7.applicants << a6 << a5 << a6
j8.applicants << a1 << a4 << a6
j9.applicants << a1 << a2 << a5
j10.applicants << a4 << a2 << a3

u3.applicants << a1 << a4 << a7
u5.applicants << a2 << a5
u7.applicants << a6 << a3

Rating.destroy_all
r1 = Rating.create :body => "I loved working with this person", :score => 4, :user_id => u6.id
r2 = Rating.create :body => "I enjoyed working with this user but suggest they could be more helpful", :score => 3, :user_id => u4.id
r3 = Rating.create :body => "The user was average", :score => 3, :user_id => u2.id
r4 = Rating.create :body => "Below average experience", :score => 2, :user_id => u8.id
r5 = Rating.create :body => "I want to marry this person", :score => 5, :user_id => u6.id
r6 = Rating.create :body => "Turned up late and still didn't do everything", :score => 1, :job_id => j2.id
r7 = Rating.create :body => "Turned up late and still didn't do everything", :score => 1, :job_id => j1.id
r8 = Rating.create :body => "Turned up late and still didn't do everything", :score => 1, :user_id => u2.id

j1.ratings << r1
j2.ratings << r2
j3.ratings << r3
j4.ratings << r4
j5.ratings << r5
j6.ratings << r8

u1.ratings << r7 # Employer has just rated a user
u2.ratings << r6

# THIS RELIES ON HAVING A USER_ID OR A JOB_ID ON THE RATING
  # If the create rating request came from a User show, add the job_id
  # /jobs/4/rate
  # If the create rating request came from a Job show, add the user_id
  # /users/4/rate

# p r8.is_job_rating?
# p r8.is_user_rating?
# p r8.get_job
# p r8.get_user
