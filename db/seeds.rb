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
User.create(name: "Karolin", email: "c@test.com", password: "test", password: "test")
User.create(name: "Christina", email: "c@test.com", password: "test", password: "test")
User.create(name: "Jordi", email: "c@test.com", password: "test", password: "test")
User.create(name: "Naoise", email: "c@test.com", password: "test", password: "test")
User.create(name: "Richard", email: "c@test.com", password: "test", password: "test")

Company.create(name: "Amazon", industry: "Software", city: "Seattle", country: "USA")
Company.create(name: "Paperless Post", industry: "Software", city: "New York", country: "USA")
Company.create(name: "Xing", industry: "Software", city: "Barcelona", country: "Spain")
Company.create(name: "Ironhack", industry: "Software", city: "Barcelona", country: "Spain")
Company.create(name: "Treemo", industry: "Software", city: "Seattle", country: "WA")
Company.create(name: "Wuaki.tv", industry: "Software", city: "Barcelona", country: "Spain")
Company.create(name: "MarsBased", industry: "Software", city: "Barcelona", country: "Spain")
Company.create(name: "Kickstarter", industry: "Software", city: "New York", country: "USA")
Company.create(name: "RapGenius", industry: "Software", city: "New York", country: "USA")
Company.create(name: "MakerBot", industry: "Software", city: "New York", country: "USA")

Review.create(user_id: 1, company_id: 1, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 2, company_id: 2, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 3, company_id: 3, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: false)
Review.create(user_id: 4, company_id: 1, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: false)
Review.create(user_id: 1, company_id: 2, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: false)
Review.create(user_id: 2, company_id: 3, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 3, company_id: 4, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 4, company_id: 5, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
