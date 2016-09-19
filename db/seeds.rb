# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u1 = User.create :name => "Andrew", :email => "andrew@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 0
u2 = User.create :name => "Arpan", :email => "arpan@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u3 = User.create :name => "Yangmei", :email => "yangmei@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2
u4 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u5 = User.create :name => "Wolf", :email => "wolf@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1
u6 = User.create :name => "Blade", :email => "blade@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2

p "Total users :#{User.all.count}"

Job.destroy_all
j1 = Job.create :task_title =>"Handyman", :task_description =>"Change all the taps",     :task_location => "Penrith", :due_date => "2016/09/24", :start_time => "3:45 PM", :workers_required => 1, :budget => 45.34, :images => "http://www.yourrepair.co.uk/wp-content/uploads/2015/07/broken-tap-emergency-plumber-300x225.jpg"

j2 = Job.create :task_title =>"Home & Garden", :task_description =>"Mow the lawn",     :task_location => "Sydney", :due_date => "2016/09/30", :start_time => "8:45 AM", :workers_required => 1, :budget => 90.00, :images => "https://aussiegardenlover.files.wordpress.com/2011/11/long-grass.jpg"

j3 = Job.create :task_title =>"Laundry", :task_description =>"Wash the clothes",     :task_location => "Sydney", :due_date => "2016/09/29", :start_time => "8:45 AM", :workers_required => 3, :budget => 90.00, :images => "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/11/2/1446488122857/53fb43da-22d7-4c95-9363-3fac10b60917-2060x1236.jpeg?w=620&q=55&auto=format&usm=12&fit=max&s=f97060839529396abbd1bed865f84c5d"

j4 = Job.create :task_title =>"Internet", :task_description =>"Set up my internet",     :task_location => "Manly", :due_date => "2016/10/02", :start_time => "8:45 AM", :workers_required => 3, :budget => 70.00, :images => "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/11/2/1446488122857/53fb43da-22d7-4c95-9363-3fac10b60917-2060x1236.jpeg?w=620&q=55&auto=format&usm=12&fit=max&s=f97060839529396abbd1bed865f84c5d"

j5 = Job.create :task_title =>"Survey", :task_description =>"Phone up for surveys",     :task_location => "Bondi", :due_date => "2016/10/02", :start_time => "8:45 PM", :workers_required => 2, :budget => 50.00, :images => "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/11/2/1446488122857/53fb43da-22d7-4c95-9363-3fac10b60917-2060x1236.jpeg?w=620&q=55&auto=format&usm=12&fit=max&s=f97060839529396abbd1bed865f84c5d"

j6 = Job.create :task_title =>"Bricklaying", :task_description =>"Build my house",     :task_location => "North Sydney", :due_date => "2016/09/24", :start_time => "8:45 AM", :workers_required => 3, :budget => 70.00, :images => "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/11/2/1446488122857/53fb43da-22d7-4c95-9363-3fac10b60917-2060x1236.jpeg?w=620&q=55&auto=format&usm=12&fit=max&s=f97060839529396abbd1bed865f84c5d"

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
u2.jobs << j2
u3.jobs << j3
u4.jobs << j4
u5.jobs << j5
u6.jobs << j6

c1.jobs << j1 <<j3 <<j5
c2.jobs << j2 <<j4 <<j6
c3.jobs << j1 <<j3 <<j5
c4.jobs << j1 <<j3 <<j5
c5.jobs << j1 <<j3 <<j5
c6.jobs << j4 <<j5 <<j6
c7.jobs << j1 <<j3 <<j5
c8.jobs << j2 <<j3 <<j5
c9.jobs << j2 <<j3 <<j5

Comment.destroy_all
co1 = Comment.create({:body => "What are the specs?", :user_id => u1.id, :job_id => j1.id})

co2 = Comment.create({:body => "Have you got more detail?", :user_id => u2.id, :job_id => j2.id})

co3 = Comment.create({:body => "I'd love to help out. I've submitted a quote", :user_id => u2.id, :job_id => j3.id})

co4 = Comment.create({:body => "Tell em their dreaming", :user_id => u2.id, :job_id => j4.id})

co5 = Comment.create({:body => "I like the sounds of that", :user_id => u2.id, :job_id => j5.id})

co6 = Comment.create({:body => "Tell em their dreaming", :user_id => u2.id, :job_id => j6.id})

p "Comments count: #{Comment.all.count}"

Applicant.destroy_all
a1 = Applicant.create :quote => 70.00 :description => "I'd like to complete this job for you. I'm awesome"
