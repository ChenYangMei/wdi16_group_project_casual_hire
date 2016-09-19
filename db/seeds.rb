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

p "Total users :#{User.all.count}"

Job.destroy_all
j1 = Job.create :task_title =>"Handyman", :task_description =>"Change all the taps",     :task_location => "Penrith", :due_date => "2016/09/24", :start_time => "3:45 PM", :workers_required => 1, :budget => 45.34, :user_id =>u1.id

j2 = Job.create :task_title =>"Home & Garden", :task_description =>"Mow the lawn",     :task_location => "Sydney", :due_date => "2016/09/30", :start_time => "8:45 AM", :workers_required => 1, :budget => 90.00, :user_id =>u2.id

j3 = Job.create :task_title =>"Laundry", :task_description =>"Wash the clothes",     :task_location => "Sydney", :due_date => "2016/09/29", :start_time => "8:45 AM", :workers_required => 3, :budget => 90.00, :user_id =>u3.id

p "Total Jobs posted : #{Job.all.count}"
u1.jobs << j1
u2.jobs << j2
u3.jobs << j3
p "Job one #{j1.task_title} posted by : #{j1.user.name}"
p "Job two #{j2.task_title} posted by : #{j2.user.name}"
p "Job three #{j3.task_title} posted by : #{j3.user.name}"


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
