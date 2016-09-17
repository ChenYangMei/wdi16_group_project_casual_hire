# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u1 = User.create :name => "Andrew", :email => "andrew@ga.co", :password => "chicken", :password_confirmation => "chicken", :admin => true
u2 = User.create :name => "Arpon", :email => "arpon@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Yangmei", :email => "yangmei@ga.co", :password => "chicken", :password_confirmation => "chicken"

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
