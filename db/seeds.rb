# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u1 = User.create :name => "Andrew", :email => "andrew@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1, :image => "Andrew_zbggob"
u2 = User.create :name => "Arpan", :email => "arpan@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2, :image => "Arpan_kmisau"
u3 = User.create :name => "Yangmei", :email => "yangmei@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1, :image => "HEADSHOTS_3080_muibog"
u4 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2, :image => "xqnyk96erpcyljpf3owe"
u5 = User.create :name => "Wolf", :email => "wolf@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1, :image => "thumb_BLACK_WHITE__2038__ibaqvj"
u6 = User.create :name => "Priyanka", :email => "priyanka@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2, :image => "Priyanka_ff7crp"
u7 = User.create :name => "Blade", :email => "blade@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1, :image => "thumb_joel_bhm4qe"
u8 = User.create :name => "Steve", :email => "steve@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2, :image => "Stephen_h24lsv"
u9 = User.create :name => "Samit", :email => "samit@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 1, :image => "Samit_havwyh"
u10 = User.create :name => "Howie", :email => "howie@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 2, :image => "Howard_nfdfau"
u11 = User.create :name => "Admin", :email => "admin@ga.co", :password => "chicken", :password_confirmation => "chicken", :role => 0, :image => "cartoon-man-suit-22793564_igt3xe"


p "Total users :#{User.all.count}"

Job.destroy_all

j1 = Job.create :task_title =>"Handyman", :task_description =>"Change all the taps",     :task_location => "Penrith", :due_date => "2016/09/24", :budget => 45.34, :images => ["handyman-1_t7qjoy", "tthq-cong-cu-lao-dong_g9ialm"]

j2 = Job.create :task_title =>"Home & Garden", :task_description =>"Mow the lawn",     :task_location => "Sydney", :due_date => "2016/09/30", :budget => 90.00, :images => ["Home-and-Garden-Show-Garden-1-1024x765_ulh99v", "home-garden-landscape-show-pdf-home-and-garden-an-excellent-home-and-garden_ama38v", "images_mean2x"]

j3 = Job.create :task_title =>"Laundry", :task_description =>"Wash the clothes",     :task_location => "Sydney", :due_date => "2016/09/29", :budget => 90.00, :images => ["laundry_1_vpkq29", "the-best-laundry-guide-to-washing-your-duvets-and-pillowsever-136396012197403901-150206170020_r77lty"]

j4 = Job.create :task_title =>"Internet", :task_description =>"Set up my internet",     :task_location => "Manly", :due_date => "2016/10/02", :budget => 70.00, :images => ["xqnyk96erpcyljpf3owe", "b5u3xbu0bhrxq8cy8mfi"]

j5 = Job.create :task_title =>"Survey", :task_description =>"Phone up for surveys",     :task_location => "Bondi", :due_date => "2016/10/02", :budget => 50.00, :images => ["b5u3xbu0bhrxq8cy8mfi", "xqnyk96erpcyljpf3owe"]

j6 = Job.create :task_title =>"Bricklaying", :task_description =>"Build my house",     :task_location => "North Sydney", :due_date => "2016/09/24", :budget => 70.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j7 = Job.create :task_title =>"Surfing Lesson", :task_description =>"Mow the lawn",     :task_location => "North Manly", :due_date => "2016/09/24", :budget => 70.00, :images => ["0d76e30461a390d44d7c1710dd7c6161_sg650j", "surfetiquette_kggjms", "surf1_mexa7i"]

j8 = Job.create :task_title =>"Cooking", :task_description =>"Babysit",     :task_location => "North Bondi", :due_date => "2016/09/24", :budget => 70.00, :images => ["cooking_ozij4k", "HN_BB_05_EasyCooking_ProRes_739-img_1280x720_cxivl5"]

j9 = Job.create :task_title =>"Ironing", :task_description =>"Fix a gutter",     :task_location => "North Maroubra", :due_date => "2016/09/24", :budget => 70.00, :images => ["ironing_forje0", "Iron2_wviir8"]

j10 = Job.create :task_title =>"Bricklaying", :task_description =>"Fix a fence",     :task_location => "North Ryde", :due_date => "2016/09/24", :budget => 70.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j11 = Job.create :task_title =>"Bricklaying", :task_description =>"Fix a fence",     :task_location => "North Curl Curl", :due_date => "2016/09/24", :budget => 50.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j12 = Job.create :task_title =>"Painting", :task_description =>"Fix a fence",     :task_location => "Neutral Bay", :due_date => "2016/09/24", :budget => 50.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j13 = Job.create :task_title =>"Signage", :task_description =>"Fix a fence",     :task_location => "Mosman", :due_date => "2016/09/24", :budget => 150.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j14 = Job.create :task_title =>"Fruit picking", :task_description =>"Pick fruit",     :task_location => "North Curl Curl", :due_date => "2016/09/24", :budget => 50.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j15 = Job.create :task_title =>"Survey", :task_description =>"Crunch some data",     :task_location => "North Curl Curl", :due_date => "2016/09/24", :budget => 50.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

j16 = Job.create :task_title =>"Fruit picking", :task_description =>"Fix a fence",     :task_location => "North Curl Curl", :due_date => "2016/09/24", :budget => 50.00, :images => ["d-a-bricklaying-image_os8ofh", "speedy-bricklaying-newport-bricklaying-qualified-bricklayer-b0b9-938x704_crdvfj"]

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
u1.jobs << j1 << j6 << j16 << j14
u3.jobs << j2 << j7 << j15
u5.jobs << j3 << j8 << j11
u7.jobs << j4 << j9 << j12
u9.jobs << j5 << j10 << j13



c1.jobs << j1 <<j3 <<j5
c2.jobs << j2 <<j4 <<j6 <<j15
c3.jobs << j1 <<j3 <<j5 <<j16
c4.jobs << j1 <<j3 <<j5
c5.jobs << j1 <<j3 <<j5
c6.jobs << j4 <<j5 <<j6 <<j16
c7.jobs << j7 <<j8 <<j9
c8.jobs << j10 <<j6 <<j9
c9.jobs << j7 <<j8 <<j9
c10.jobs << j10 <<j11 <<j2
c11.jobs << j12 <<j13 <<j14

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
a8 = Applicant.create :quote => 70.00, :description => "I'd like to complete this job for you. I'm awesome", :user_id => u2.id
a9 = Applicant.create :quote => 50.00, :description => "Pick me. I'm awesome", :user_id => u4.id
a10 = Applicant.create :quote => 60.00, :description => "I got what you need! I'm awesome", :user_id => u6.id
a11 = Applicant.create :quote => 77.00, :description => "I'm happy to help. I'm awesome", :user_id => u8.id
a12 = Applicant.create :quote => 44.00, :description => "I'm really awesome", :user_id => u10.id
a13 = Applicant.create :quote => 34.00, :description => "Piece of cake", :user_id => u2.id
a14 = Applicant.create :quote => 30.00, :description => "Let me know if you have any further questions", :user_id => u6.id

p "Applicants count: #{Applicant.all.count}"

j1.applicants << a1 << a2 << a14
j2.applicants << a3 << a4
j3.applicants << a5 << a6
j4.applicants << a7 << a8
j5.applicants << a9 << a10
j6.applicants << a11 << a12
j7.applicants << a13

u2.applicants << a1 << a5 << a9
u4.applicants << a2 << a6 << a10
u6.applicants << a3 << a7 << a11
u8.applicants << a4 << a8 << a12
u10.applicants << a13 << a14

Rating.destroy_all
r1 = Rating.create :body => "I loved working with this person", :score => 4, :user_id => u6.id
r2 = Rating.create :body => "I enjoyed working with this user but suggest they could be more helpful", :score => 3, :user_id => u4.id
r3 = Rating.create :body => "The user was average", :score => 3, :user_id => u2.id
r4 = Rating.create :body => "Below average experience", :score => 2, :user_id => u8.id
r5 = Rating.create :body => "I want to marry this person", :score => 5, :user_id => u6.id
r6 = Rating.create :body => "Turned up late and still didn't do everything", :score => 1, :job_id => j2.id
r7 = Rating.create :body => "Turned up late and still didn't do everything", :score => 2, :job_id => j1.id
r8 = Rating.create :body => "Didn't bother turning up", :score => 1, :user_id => u2.id
r9 = Rating.create :body => "Turned up late but I love that", :score => 4, :user_id => u2.id
r10 = Rating.create :body => "Turned up late and still didn't do everything", :score => 1, :user_id => u2.id
r11 = Rating.create :body => "I loved working with this person", :score => 4, :user_id => u6.id
r12 = Rating.create :body => "I enjoyed working with this user but suggest they could be more helpful", :score => 3, :user_id => u4.id
r13 = Rating.create :body => "The user was average", :score => 3, :user_id => u2.id
r14 = Rating.create :body => "Below average experience", :score => 2, :user_id => u8.id
r15 = Rating.create :body => "I want to marry this person", :score => 5, :user_id => u6.id
r16 = Rating.create :body => "I loved working with them", :score => 4, :job_id => j2.id
r17 = Rating.create :body => "Turned up late and still didn't do everything", :score => 2, :job_id => j1.id
r18 = Rating.create :body => "Didn't bother turning up", :score => 1, :user_id => u2.id
r19 = Rating.create :body => "Turned up late but I love that", :score => 4, :user_id => u2.id
r20 = Rating.create :body => "I loved working with them", :score => 4, :user_id => u2.id

j1.ratings << r1
j2.ratings << r2


u2.ratings << r7 # Employer has just rated a user
u2.ratings << r6
u4.ratings << r3
u4.ratings << r4
u6.ratings << r5
u6.ratings << r8
u6.ratings << r9
u6.ratings << r10
u2.ratings << r11
u2.ratings << r12
u8.ratings << r13
u4.ratings << r14
u8.ratings << r15
u8.ratings << r16
u8.ratings << r17
u10.ratings << r18
u10.ratings << r19
u10.ratings << r20

# THIS RELIES ON HAVING A USER_ID OR A JOB_ID ON THE RATING
  # If the create rating request came from a User show, add the job_id
  # /jobs/4/rate
  # If the create rating request came from a Job show, add the user_id
  # /users/4/rate

# p r8.is_job_rating?
# p r8.is_user_rating?
# p r8.get_job
# p r8.get_user
