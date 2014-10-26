# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :user do
    name     { Faker::Name.name } # Why using lamdba here?
    email     { Faker::Internet.email }
    password "aSuPeRsEcUrEpAsSwOrd"
  end
end
