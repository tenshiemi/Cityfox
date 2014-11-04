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
Company.create(name: "Microsoft", industry: "Software", city: "New York", country: "USA")
Company.create(name: "Comcast", industry: "Telecommunications", city: "Barcelona", country: "Spain")
Company.create(name: "Substantial", industry: "Software", city: "Barcelona", country: "Spain")
Company.create(name: "Treemo", industry: "Software", city: "Seattle", country: "WA")
Company.create(name: "Paper by Fifty Three", industry: "Software", city: "Barcelona", country: "Spain")
Company.create(name: "Sony", industry: "Hardware", city: "Barcelona", country: "Spain")
Company.create(name: "Kickstarter", industry: "Software", city: "New York", country: "USA")
Company.create(name: "RapGenius", industry: "Software", city: "New York", country: "USA")
Company.create(name: "MakerBot", industry: "Software", city: "New York", country: "USA")
Company.create(name: "Ford", industry: "Software", city: "New York", country: "USA")

Review.create(user_id: 1, company_id: 1, title: "A++ would do business!", description: "We worked together on a very large project. It took months and months but finally everything came together in the end. I am really looking forward to having another opportunity to work with these people, they are so smart!", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 2, company_id: 2, title: "Awful to work with", description: "The owner of this company has a huge ego. He owes us thousands of dollars, and we took him to litigation. Meanwhile he is posting pics of his new Ferrari on Twitter. Asshole.", rating_communication: 1, rating_payment: 3, rating_expectations: 2, would_work_with: false)
Review.create(user_id: 3, company_id: 3, title: "Great communicators", description: "This company was a dream to work with. They met deadlines and always provided us with the materials we needed to do the job. It was so nice compared to the more common scenario of obtuse clients.", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 4, company_id: 4, title: "Brilliant people", description: "Love these guys. Not only are they easy to work with, but they throw amazing parties on their rooftop deck. Definitely worth taking a job from them to get in their circle.", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 1, company_id: 2, title: "Delusional", description: "These people have no idea what they want. They were constantly calling at 3am with their little emergencies that turned out to be bullshit like 'Can you up the transparency of that color by 2%.' Don't waste your time if you want a good night's sleep", rating_communication: 2, rating_payment: 3, rating_expectations: 1, would_work_with: false)
Review.create(user_id: 2, company_id: 3, title: "Horrible people, horrible company", description: "The bureaucracy when working with these folks is insane. Every little change has to be approved by at least a half dozen executives. It's a total headache. Expect them to hold you responsible when you can't hit your milestones as a result.", rating_communication: 1, rating_payment: 1, rating_expectations: 1, would_work_with: false)
Review.create(user_id: 3, company_id: 4, title: "Take their money!", description: "These are good people, and a pleasure to work with. It was easy to build a mutual trust and respect with them, and this made the experience go very smoothly", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
Review.create(user_id: 4, company_id: 5, title: "Go for it!", description: "Great company to work with if you just want to knock out a few projects and make quick bucks.", rating_communication: 5, rating_payment: 3, rating_expectations: 4, would_work_with: true)
