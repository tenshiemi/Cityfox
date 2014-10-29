# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Emily", email: "admin@test.com", password: "test", password: "test", role: "admin")
User.create(name: "Sarah", email: "a@test.com", password: "test", password: "test")
User.create(name: "Emi", email: "b@test.com", password: "test", password: "test")
User.create(name: "Emmy", email: "c@test.com", password: "test", password: "test")

Company.create(name: "Amazon", industry: "Software", city: "Seattle", country: "USA")
Company.create(name: "Paperless Post", industry: "Software", city: "New York", country: "USA")
Company.create(name: "Xing", industry: "Software", city: "Barcelona", country: "Spain")
