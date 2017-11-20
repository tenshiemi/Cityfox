require 'faker'

FactoryBot.define do
  factory :company do
    name                   { Faker::Company.name } # Why using lamdba here?
    city                   { Faker::Address.city }
    country               { Faker::Address.country }
  end
end
