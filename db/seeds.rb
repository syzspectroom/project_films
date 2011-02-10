# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
require "factory_girl"

puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system./}.each(&:drop)
puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'admin', :email => 'admin@kino.com', :password => '123456', :password_confirmation => '123456'

Factory.define :user do |u|
  u.name 'admin'
  u.email 'admin@kino.com'
  u.password '123456'
  u.password_confirmation '123456'
end

user = Factory :user
puts 'New user created: ' << user.name

Factory.define :film do |f|
  f.sequence (:name) { |n| "film-#{n}" }
  f.sequence (:orig_name) { |n| "original film #{n}" }
end

3.times do
  Factory :film
end
