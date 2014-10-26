require 'faker'

FactoryGirl.define do
  factory :review do
    title     							{ Faker::Lorem.words(5) }
    description     				{ Faker::Lorem.paragraph }
    company_id							1
    user_id									1
    would_work_with					true
  end
end